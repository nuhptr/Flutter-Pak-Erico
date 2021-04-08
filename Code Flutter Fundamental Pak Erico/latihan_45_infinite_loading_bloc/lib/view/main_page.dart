import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan_45_infinite_loading_bloc/bloc/post_bloc.dart';
import 'package:latihan_45_infinite_loading_bloc/view/post_item.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController scrollController = ScrollController();
  PostBloc bloc;

  void onScroll() {
    double maxScroll = scrollController.position.maxScrollExtent;
    double currentScroll = scrollController.position.pixels;

    if (currentScroll == maxScroll) {
      bloc.add(PostEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<PostBloc>(context);
    scrollController.addListener(() => onScroll());

    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite Loading BLOC'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: BlocBuilder<PostBloc, PostState>(
          builder: (BuildContext context, state) {
            if (state is PostUnitialized)
              return Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              );
            else {
              PostLoaded postLoaded = state as PostLoaded;
              return ListView.builder(
                controller: scrollController,
                itemCount: (postLoaded.hasReachedMax)
                    ? postLoaded.posts.length
                    : postLoaded.posts.length + 1,
                itemBuilder: (context, index) =>
                    (index < postLoaded.posts.length)
                        ? PostItem(postLoaded.posts[index])
                        : Container(
                            child: Column(
                            children: [
                              SizedBox(height: 20),
                              Center(
                                child: CircularProgressIndicator(),
                              ),
                            ],
                          )),
              );
            }
          },
        ),
      ),
    );
  }
}
