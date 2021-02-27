void main(List<String> args) {
  var list = <int>[1, 1, 6, 6, 4, 3, 2];
  Set<int> s;

  // membuat  list tersebut menjadi unique
  s = list.toSet();

  s.forEach((bilangan) {
    print(bilangan);
  });
}
