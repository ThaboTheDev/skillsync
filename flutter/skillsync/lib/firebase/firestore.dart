import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addUser(String name, int age) async {
  try {
    await FirebaseFirestore.instance.collection('users').add({
      'name': name,
      'age': age,
    });
    print('user added');
  } catch (e) {
    print('Errors $e');
  }
}