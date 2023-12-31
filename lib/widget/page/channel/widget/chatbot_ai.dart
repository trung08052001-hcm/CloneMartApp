import 'package:clonemartapp/commom/config/dio_config.dart';
import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [
    {'sender': 'NOVA', 'text': 'Welcome to NOVA Chatbot! How can I help you?'},
  ];

  late ChatApiHelper _apiHelper;
  @override
  void initState() {
    super.initState();
    _apiHelper = ChatApiHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // List of messages
                ..._messages.map((message) {
                  final isMe = message['sender'] == 'ME';
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: isMe ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isMe ? 16.0 : 0.0),
                        topRight: Radius.circular(isMe ? 0.0 : 16.0),
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Align(
                      alignment:
                          isMe ? Alignment.centerRight : Alignment.centerLeft,
                      child: Text(
                        message['text']!,
                        style: TextStyle(
                          color: isMe ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: _controller,
                  hintText: 'Type a message',
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () async {
                  final text = _controller.text.trim();
                  if (text.isNotEmpty) {
                    final apiResult = await _apiHelper.sendMessage(text);

                    if (apiResult['success']) {
                      final result = apiResult['result'];
                      setState(() {
                        _messages.add({'sender': 'ME', 'text': text});
                        _messages.add({'sender': 'BOT', 'text': result});
                        _controller.clear();
                      });
                    } else {
                      // Xử lý lỗi
                      print('API Error: ${apiResult['error']}');
                    }
                  }
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
