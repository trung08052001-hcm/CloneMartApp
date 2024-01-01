import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveUserData({
    required String fullName,
    required String email,
    required String phone,
  }) async {
    try {
      await _firestore.collection('users').add({
        'fullName': fullName,
        'email': email,
        'phone': phone,
      });
    } catch (e) {
      print('Error saving user data: $e');
      // Xử lý lỗi nếu cần
    }
  }
}
