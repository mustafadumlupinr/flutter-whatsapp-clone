import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/widgets/message_box.dart';

class AllMessagesScreen extends StatefulWidget {
  const AllMessagesScreen({super.key});

  @override
  State<AllMessagesScreen> createState() => _AllMessagesScreenState();
}

class _AllMessagesScreenState extends State<AllMessagesScreen> {
  double doneIconSize = 20;
  String image ="https://m.economictimes.com/thumb/msid-116769924,width-1200,height-900,resizemode-4,imgsize-22950/keanu-reeves-gives-biggest-update-on-possibility-of-fifth-john-wick-film.jpg";
  String date = "15:34";
  String message = "This message";
  String userName = "John Wick";
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          MessageBox(doneIconSize: doneIconSize,
          imageUrl: image,
          date: date,
          message: message,
          userName: userName,
          )
        ],
      ),
    );
  }
}

