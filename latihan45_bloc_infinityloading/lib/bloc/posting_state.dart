import '../posting.dart';

abstract class PostingState {}

// TODO: awal state
class UnitializedPosting extends PostingState {}

// TODO: Ketika ada data
class PostingLoad extends PostingState {
  List<Posting>? posting;
  bool? reachMax;

  // TODO: constructor ketika belum ada data
  PostingLoad({this.posting, this.reachMax});

  // TODO: constructor ketika sudah ada data
  PostingLoad loading({List<Posting>? post, bool? max}) {
    return PostingLoad(
      // ignore: unnecessary_this
      posting: post ?? this.posting,
      // ignore: unnecessary_this
      reachMax: max ?? this.reachMax,
    );
  }
}
