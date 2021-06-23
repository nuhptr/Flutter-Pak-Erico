import 'package:flutter_bloc/flutter_bloc.dart';

import '../posting.dart';
import 'posting_event.dart';
import 'posting_state.dart';

class PostingBloc extends Bloc<PostingEvent, PostingState> {
  PostingBloc(PostingState initialState) : super(initialState);

  @override
  Stream<PostingState> mapEventToState(PostingEvent? event) async* {
    // TODO: implement mapEventToState
    List<Posting>? posting;

    if (state is UnitializedPosting) {
      posting = await Posting.getPost(0, 10);
      yield PostingLoad(
        posting: posting,
        reachMax: false,
      );
    } else {
      var postLoading = state as PostingLoad;
      posting = await Posting.getPost(postLoading.posting!.length, 10);

      // TODO: kondisi pengembalian ketika kosong dan tidak posting
      yield (posting.isEmpty)
          ? postLoading.loading(max: true)
          : PostingLoad(
              posting: postLoading.posting! + posting, reachMax: true);
    }
  }
}
