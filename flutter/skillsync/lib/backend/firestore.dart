import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> addUser(String userId, String name, String email, String role, String expertise) async {
    try {
      await _firestore.collection('users').doc(userId).set({
        'name': name,
        'email': email,
        'role': role,
        'expertise' : expertise,
      });
      print('user added');
      return true;
    } catch (e) {
      print('Errors $e');
      return false;
    }
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getUser(String userId) async {
    return await _firestore.collection('users').doc(userId).get();
  }

  Future<bool> addMeeting(String meetingId, String mentorId, String peerId, DateTime time, String status) async {
    try {
      await _firestore.collection('meetings').doc(meetingId).set({
        'mentorId': mentorId,
        'peerId': peerId,
        'time': time,
        'status': status,
      });
      print('meeting added');
      return true;
    } catch (e) {
      print('error adding meeting $e');
      return false;
    }
  }
}