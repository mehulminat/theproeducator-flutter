import 'package:flutter/material.dart';
import 'package:proeducator/Screens/dashboard.dart';
import 'package:proeducator/Screens/homescreen.dart';

import 'profile.dart';

class ChatBotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatPage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];
  int _currentIndex = 1;

  List<String> bottomNavBarIconPaths = [
    'assets/home.png',
    'assets/chat.png',
    'assets/dashboard.png',
    'assets/profile.png',
  ];

  void _handleSubmitted(String text) {
    _textController.clear();

    setState(() {
      final currentTime = DateTime.now().toString();

      _messages.insert(
        0,
        ChatMessage(
          text: text,
          isUserMessage: true,
          sentTime: currentTime,
        ),
      );

      // Simulate chatbot response after a short delay
      Future.delayed(Duration(seconds: 1), () {
        String response = getChatBotResponse(text);
        setState(() {
          final responseTime = DateTime.now().toString();

          _messages.insert(
            0,
            ChatMessage(
              text: response,
              isUserMessage: false,
              sentTime: responseTime,
            ),
          );
        });
      });
    });
  }

  String getChatBotResponse(String message) {
    // Add your chatbot logic here to generate appropriate responses based on user input
    if (message.toLowerCase() == 'hi' || message.toLowerCase() == 'hello') {
      return 'Hello , welcome to proeducator ! How May i Help you ?';
    } else if (message.toLowerCase() == "fine") {
      return 'How may I help you?';
    } else if (message.toLowerCase() == 'bye') {
      return 'Goodbye! Take care!';
    } else {
      return "I'm sorry, I didn't understand that.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Image.asset(
          "assets/logo.png",
          height: 30,
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });

          // Navigate to different screens based on the selected index
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              // Navigate to HomeScreen
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
              // Navigate to ChatScreen
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()));
              // Navigate to DashboardScreen
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
              // Navigate to ProfileScreen
              break;
          }
        },
        items: List.generate(bottomNavBarIconPaths.length, (index) {
          return BottomNavigationBarItem(
            icon: Image.asset(
              bottomNavBarIconPaths[index],
              width: 24,
              height: 24,
            ),
            label: '',
          );
        }),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ProeducatorChatBot",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.call)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = _messages[index];
                return ChatMessage(
                  text: message.text,
                  isUserMessage: message.isUserMessage,
                  sentTime: message.sentTime,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: 'Type a message'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUserMessage;
  final String sentTime;

  const ChatMessage({
    required this.text,
    required this.isUserMessage,
    required this.sentTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isUserMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: isUserMessage ? Colors.blueAccent : Colors.grey[200],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                Text(
                  text,
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            sentTime.substring(
                sentTime.indexOf(' ') + 1, sentTime.lastIndexOf(':')),
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.0,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
