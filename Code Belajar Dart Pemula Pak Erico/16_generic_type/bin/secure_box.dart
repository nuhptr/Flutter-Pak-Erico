// Generic type
// artinya simbol T tersebut bisa diganti dengan tipe data apapun
class SecureBox<T> {
  final T _data;
  final String _pin;

  SecureBox(this._data, this._pin);

  T getData(String pin) => (pin == _pin) ? _data : null;
}
