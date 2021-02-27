void main(List<String> args) {
  // Optional parameter
  print(say('Adi', 'kamu cantik'));
  print(say('dia', 'jelek', to: 'dinda', appName: 'WA'));
}

// String to dan appName merupakan optional parameter
// boleh diisi parameter/boleh tidak diisi
String say(String from, String message, {String to, String appName}) {
  return from +
      ' say ' +
      message +
      ((to != null)
          ? ' to ' + to
          : ' ' + ((appName != null) ? 'via' + appName : ' '));
}
