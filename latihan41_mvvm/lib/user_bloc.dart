import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan41_mvvm/user.dart';

class UserBloc extends Bloc<int, User> {
  UserBloc(User initialState) : super(initialState);

  @override
  Stream<User> mapEventToState(int? event) async* {
  try {
      // TODO: get user from API based on id
      User? user = await User.getUser(event);
      yield user;
    } catch (e) {
      print(e);
    }
  }
}
