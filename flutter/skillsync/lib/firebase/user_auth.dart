import 'package:firebase_auth/firebase_auth.dart';

Future<void> signUpWithEmail(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, 
      password: password
    );
    print('user singed up: ${userCredential.user?.email}');
  } catch (e) {
    print('Error $e');
  }
}

Future<void> login(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email, 
      password: password
    );
    print('User logged in successfully: ${userCredential.user?.email}');
  } catch (e) {
    print('Errors $e');
  }
}