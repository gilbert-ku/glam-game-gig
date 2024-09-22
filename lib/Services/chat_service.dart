import 'package:firebase_database/firebase_database.dart';

class ChatService {
  final DatabaseReference _chatRef = FirebaseDatabase.instance.ref().child('chat');

  void sendMessage(String userId, String message) {
    _chatRef.push().set({
      'userId': userId,
      'message': message,
      'timestamp': DateTime.now().toIso8601String(),
    });
  }

  // Corrected method: Stream<DatabaseEvent>
  Stream<DatabaseEvent> getMessages() {
    return _chatRef.onValue;
  }
}
