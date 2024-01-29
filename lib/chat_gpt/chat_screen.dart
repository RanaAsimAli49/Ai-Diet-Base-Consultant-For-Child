import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'api_key.dart';

class ChatGPTScreen extends StatefulWidget {
  @override
  _ChatGPTScreenState createState() => _ChatGPTScreenState();
}

class _ChatGPTScreenState extends State<ChatGPTScreen> {
  final List<Message> _messages = [];
  bool isLoading = false;

  final TextEditingController _textEditingController = TextEditingController();

  void onSendMessage() async {
    setState(() {
      isLoading=true;
    });
    Message message = Message(text: _textEditingController.text, isMe: true);

    _textEditingController.clear();

    setState(() {
      _messages.insert(0, message);
    });

    String response = await sendMessageToChatGpt(message.text);

    setState(() {
      isLoading=false;
    });
    Message chatGpt = Message(text: response, isMe: false);

    setState(() {
      _messages.insert(0, chatGpt);
    });
  }

  Future<String> sendMessageToChatGpt(String message) async {
    Uri uri = Uri.parse("https://api.openai.com/v1/chat/completions");

    Map<String, dynamic> body = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": message}
      ],
      "max_tokens": 500,
    };

    final response = await http.post(
      uri,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${APIKey.apiKey}",
      },
      body: json.encode(body),
    );

    print(response.body);

    Map<String, dynamic> parsedReponse = json.decode(response.body);

    String reply = parsedReponse['choices'][0]['message']['content'];

    return reply;
  }

  Widget _buildMessage(Message message) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          crossAxisAlignment:
              message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message.isMe ? 'You' : 'GPT',
              style: message.isMe ? TextStyle(color:Color(0xFF7165D6),fontSize: 16,fontWeight: FontWeight.bold,):TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.bold),
            ),
            SingleChildScrollView(
              child: Container(
                  decoration: BoxDecoration(
                    color:Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(message.text,textAlign: TextAlign.justify,style: const TextStyle(color: Colors.white,height: 1.5),)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatGPT'),
        backgroundColor: Color(0xFF7165D6),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          //const Divider(height: 1.0),
          Column(
            children: [
              if(isLoading)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    SizedBox(
                      height: 50,
                      width: 70,
                      child: Image.asset(
                          "assets/gpttyping.gif",
                          height: 125.0,
                          width: 125.0,
                          ),
                    )
                  ],
                ),
              Container(
                decoration: BoxDecoration(color: Theme.of(context).cardColor),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _textEditingController,
                        cursorColor:Color(0xFF7165D6),
                        style: TextStyle(color: Color(0xFF7165D6)),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(20.0),
                          hintText: 'Type a message...',
                          hintStyle:TextStyle(color: Color(0xFF7165D6)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send,color: Color(0xFF7165D6),size: 30,),
                      onPressed: onSendMessage,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isMe;

  Message({required this.text, required this.isMe});
}
