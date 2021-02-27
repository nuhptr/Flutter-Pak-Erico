import 'secure_box.dart';
import 'secure_time.dart';

void main(List<String> arguments) {
  var box = SecureTime(DateTime.now(), '123');

  print(box.getData('123').toString());

  print('===========');

  var generic = SecureBox<String>('Makan', '123');
  print(generic.getData('123'));
}
