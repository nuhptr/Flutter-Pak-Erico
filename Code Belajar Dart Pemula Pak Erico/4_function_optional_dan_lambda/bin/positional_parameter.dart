String say2(String from, String message,
    [String to, String appName = 'Whatsapp']) {
  return from +
      ' say ' +
      message +
      ((to != null)
          ? ' to ' + to
          : ' ' + ((appName != null) ? 'via' + appName : ' '));
}

void main(List<String> args) {
  // positional parameter
  // gaperlu tulis parameternya lagi
  print(say2('dia', 'jelek', 'kamu', 'WA'));
}
