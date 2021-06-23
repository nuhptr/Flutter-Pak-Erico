import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan45_bloc_infinityloading/bloc/posting_state.dart';
import 'package:latihan45_bloc_infinityloading/posting_item.dart';

import '../bloc/posting_bloc.dart';
import '../bloc/posting_event.dart';

void main() {
  // TODO: lock device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // TODO: register the bloc provider
        home: BlocProvider<PostingBloc>(
          create: (_) => PostingBloc(UnitializedPosting())..add(PostingEvent()),
          child: Home(),
        ));
  }
}

// TODO: widget utama di main page
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: create properties of class
  var scrollController = ScrollController();
  PostingBloc? bloc;

  // TODO: scroll function
  void onScroll() {
    double max = scrollController.position.maxScrollExtent;
    double current = scrollController.position.pixels;

    if (current == max) {
      bloc!.add(PostingEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: buat variabel penampung
    bloc = BlocProvider.of<PostingBloc>(context);
    scrollController.addListener(() => onScroll());

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: BlocBuilder<PostingBloc, PostingState>(
          builder: (BuildContext context, state) {
            if (state is UnitializedPosting) {
              return const Center(
                  child: SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              ));
            }

            // TODO: kondisi jika sudah ada data
            else {
              PostingLoad? postingLoad = state as PostingLoad;

              return ListView.builder(
                  controller: scrollController,
                  itemCount: (postingLoad.reachMax!)
                      ? postingLoad.posting!.length
                      : postingLoad.posting!.length + 1,
                  itemBuilder: (BuildContext context, index) {
                    return (index < postingLoad.posting!.length)
                        ? PostingItem(postingLoad.posting![index])
                        : Container(
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                const Center(
                                  child: CircularProgressIndicator(),
                                )
                              ],
                            ),
                          );
                  });
            }
          },
        ),
      ),
    );
  }
}
