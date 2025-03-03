import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/utils/Colors.dart';

class CustomPopupButton extends StatelessWidget {
  const CustomPopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidthSize = 250;
    return PopupMenuButton(
      constraints: BoxConstraints(maxWidth: containerWidthSize),
      borderRadius: BorderRadius.circular(40),
      iconColor: Colors.white,
      icon: Container(
        width: 40, // Butonun genişliği
        height: 40, // Butonun yüksekliği
        decoration: BoxDecoration(
          color: AppColors.buttonBackGroundColor, // Arka plan rengi
          borderRadius: BorderRadius.circular(100), // Köşeleri yuvarlatma
        ),
        child: Icon(Icons.more_horiz, color: Colors.white, size: 30),
      ),
      onSelected: (value) {
        // Seçildiğinde yapılacak işlemler
      },
      itemBuilder: (BuildContext bc) {
        return [
          PopupMenuItem(
            child: SizedBox(
              width: containerWidthSize,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sohbet Seç"),
                  Icon(Icons.check_circle_outline),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            child: SizedBox(
              width: containerWidthSize,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tümü okundu"),
                  Icon(Icons.check_box_outlined),
                ],
              ),
            ),
          ),
        ];
      },
    );
  }
}
