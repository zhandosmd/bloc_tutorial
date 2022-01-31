import 'dart:math';
import 'package:flutter_mvvm_counter/domain/data_providers/user_data_provider.dart';
import 'package:flutter_mvvm_counter/domain/entity/user.dart';

class UserService {
  final userDataProvider = UserDataProvider();
  User get user => userDataProvider.user;

  Future<void> initialize() async {
    userDataProvider.loadValue();
  }

  void incrementAge() {
    final user = userDataProvider.user;
    userDataProvider.user = user.copyWith(age: user.age+1);
  }

  void decrementAge() {
    userDataProvider.user = user.copyWith(age: max(user.age-1, 0));
  }
}