import 'package:bloc/bloc.dart';

import 'package:latihan_41_mvvm/model/user.dart';

class UserBloc extends Bloc<int, User> {
  UserBloc(User initialState) : super(initialState);

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.getUserFromApi(event);
      yield user;
    } catch (_) {}
  }
}
