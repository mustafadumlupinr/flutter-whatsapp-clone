import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/utils/Colors.dart';
import 'package:flutter_whatsapp_clone/widgets/custom_popup_button.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.screenBackGroundColor,
        leading: CustomPopupButton(),
        actions: [
          IconButton.filled(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_rounded),
            style: IconButton.styleFrom(
                backgroundColor: AppColors.buttonBackGroundColor,
                foregroundColor: Colors.white),
          ),
          SizedBox(width: 20),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            iconSize: 30,
            style: IconButton.styleFrom(
              backgroundColor: AppColors.buttonGreenColor,
              foregroundColor: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sohbetler",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
            Row(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
