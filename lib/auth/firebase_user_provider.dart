import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class O3ErpFirebaseUser {
  O3ErpFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

O3ErpFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<O3ErpFirebaseUser> o3ErpFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<O3ErpFirebaseUser>((user) => currentUser = O3ErpFirebaseUser(user));
