import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan_45_infinite_loading_bloc/model/post.dart';

abstract class PostState {}

class PostEvent {}

class PostUnitialized extends PostState {}

class PostLoaded extends PostState {
  final List<Post> posts;
  final bool hasReachedMax;

  PostLoaded({this.posts, this.hasReachedMax});

  PostLoaded copyWith({List<Post> posts, bool hasReachedMax}) {
    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(PostState initialState) : super(initialState);

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    List<Post> posts;
    if (state is PostUnitialized) {
      posts = await Post.connectApi(1, 10);
      yield PostLoaded(posts: posts, hasReachedMax: false);
    } else {
      PostLoaded postLoaded = state as PostLoaded;
      posts = await Post.connectApi(postLoaded.posts.length, 10);

      yield (posts.isEmpty)
          ? postLoaded.copyWith(hasReachedMax: true)
          : PostLoaded(posts: postLoaded.posts + posts, hasReachedMax: true);
    }
  }
}
