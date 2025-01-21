import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:skillsync/backend/firestore.dart';

Future<bool> signUpWithEmail(String name, String email, String password,String role, String expertise) async {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirestoreService firestoreService = FirestoreService();

  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: email, 
      password: password
    );

    String userId = userCredential.user!.uid;

    await firestoreService.addUser(userId, name, email, role, expertise);

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

Future<void> fetchCurrentUser(String userId) async {
  FirestoreService firestoreService = FirestoreService();
  DocumentSnapshot<Map<String, dynamic>> userDoc = await firestoreService.getUser(userId);

  if (userDoc.exists) {
    Map<String, dynamic>? userData = userDoc.data();
    print('user data found $userData');
  } else {
    print('user data not found');
  }
}