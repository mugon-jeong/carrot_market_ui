import 'package:carrot_market_ui/models/chat_message.dart';
import 'package:carrot_market_ui/screens/components/appbar_prefereed_size.dart';
import 'package:carrot_market_ui/screens/components/chat_container.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
