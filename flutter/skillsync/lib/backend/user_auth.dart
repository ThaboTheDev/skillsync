import 'package:firebase_auth/firebase_auth.dart';

Future<bool> signUpWithEmail(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, 
      password: password
    );
    print('user singed up: ${userCredential.user?.email}');
    return true;
  } catch (e) {
    print('Error $e');
    return false;
  }
}

Future<bool> login(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email, 
      password: password
    );
    print('User logged in successfully: ${userCredential.user?.email}');
    return true;
  } catch (e) {
    print('Errors $e');
    return false;
  }
}