import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

Future<void> uploadFile(File file) async {
  try {
    final storageRef = FirebaseStorage.instance.ref().child(
      'uploads/${file.path.split('/').last}'
    );
    await storageRef.putFile(file);
    print('File uploaded');
  } catch (e) {
    print('Error: $e');
  }
}