import 'package:hive/hive.dart';

import '../model/account.dart';
import '../model/user.dart';

class HiveDB {
  var box = Hive.box('task2');

  storeUser(User user) {
    box.put('user', user.toJson());
  }

  User loadUser() {
    var user = User.fromJson(box.get('user'));
    return user;
  }

  deleteUser() {
    box.delete('user');
  }

  storeAccount(Account account) {
    box.put('account', account.toJson());
  }

  Account loadAccount() {
    var account = Account.fromJson(box.get('account'));
    return account;
  }

  deleteAccount() {
    box.delete('account');
  }
}
