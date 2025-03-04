import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/screens/chats_screen/all_messages_screen.dart';
import 'package:flutter_whatsapp_clone/screens/chats_screen/favorites_screen.dart';
import 'package:flutter_whatsapp_clone/screens/chats_screen/groups_screen.dart';
import 'package:flutter_whatsapp_clone/screens/chats_screen/plus_screen.dart';
import 'package:flutter_whatsapp_clone/screens/chats_screen/unread_screen.dart';
import 'package:flutter_whatsapp_clone/utils/Colors.dart';
import 'package:flutter_whatsapp_clone/utils/chats_screen_strings.dart';
import 'package:flutter_whatsapp_clone/widgets/custom_popup_button.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ChatsScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  int _tapBarLength = 5;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _tapBarLength, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ChatsScreenStrings.chatsScreenTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildTapButton(0, ChatsScreenStrings.tapBarButtonAll),
                  _buildTapButton(1, ChatsScreenStrings.tapBarButtonUnRead),
                  _buildTapButton(2, ChatsScreenStrings.tapBarButtonFavorite),
                  _buildTapButton(3, ChatsScreenStrings.tapBarButtonGrups),
                  _buildTapButton(4, ChatsScreenStrings.tapBarButtonPlus),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  AllMessagesScreen(),
                  UnreadScreen(),
                  FavoritesScreen(),
                  GroupsScreen(),
                  PlusScreens()
                ]
              ))

          ],
        ),
      ),
    );
  }

  Widget _buildTapButton(int index, String text) {
    bool isSelected = _selectedIndex == index;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () => _tabController.animateTo(index),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(8),
            backgroundColor: isSelected
                ? AppColors.buttonGreenColor.withAlpha(128)
                : AppColors.buttonBackGroundColor),
        child: Text(
          text,
          style: TextStyle(
              color: isSelected
                  ? AppColors.buttonGreenColor
                  : Colors.white70,
              fontSize: 18),
        ),
      ),
    );
  }
}
