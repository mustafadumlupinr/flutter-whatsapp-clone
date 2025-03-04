import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
    required this.doneIconSize,
    required this.imageUrl,
    required this.date,
    required this.message,
    required this.userName,
  });

  final double doneIconSize;
  final String imageUrl;
  final String userName;
  final String date;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: ClipOval(
            child: Image.network(imageUrl,
            height: 50,
            width: 50,
            fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(userName,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold)),
                SizedBox(width: MediaQuery.of(context).size.width * 0.42,),
                Text(date,style: TextStyle(color: Colors.grey))
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Stack(
                    children: [
                      Icon(Icons.done,color: Colors.grey ,size: doneIconSize,),
                      Positioned(
                        left: 7,
                        child: Icon(Icons.done,color: Colors.grey ,size: doneIconSize,)
                        )
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Text(message,style: TextStyle(color: Colors.grey))
              ],
            )
          ],
        )
      ],
    );
  }
}