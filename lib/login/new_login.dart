import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewLogin extends StatefulWidget {
  const NewLogin({super.key});

  @override
  State<NewLogin> createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _submitMessage() async {
    final enteredMessage = _messageController.text;

    if (enteredMessage.trim().isEmpty) {
      return;
    } // this will not send the message to firebase

    // this is closing the keyboard on send button
    FocusScope.of(context).unfocus();
    _messageController.clear();

    final user = FirebaseAuth.instance.currentUser!;
    final userData = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();

    FirebaseFirestore.instance.collection('Meal').add({
      'text': enteredMessage,
      'createdAt': Timestamp.now(),
      'userId': user.uid, // this will give us the id of user
      'username': userData.data()!['username'],
      'userImage': userData.data()!['imageUrl'],
    }); // this will create the id/name according to there own will
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 1,
        bottom: 14,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              enableSuggestions: true,
              decoration: const InputDecoration(labelText: 'Send Message...'),
            ),
          ),
          IconButton(
            onPressed: _submitMessage,
            icon: const Icon(
              Icons.send,
            ),
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
