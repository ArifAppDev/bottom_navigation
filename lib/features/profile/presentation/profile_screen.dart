import 'package:flutter/material.dart';
import 'package:practice_app/asset_helpers/app_colors.dart';
import 'package:practice_app/asset_helpers/app_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //================ backround color =================
      backgroundColor: AppColor.cffffff,
      appBar: AppBar(
        title: Text(
          "Profile Screen",
          style: TextFontStyle.txtfntstyleFitree16w600c59c53.copyWith(
            fontSize: 20,
            color: AppColor.cffffff,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.c4db8ff,
      ),
      body: Center(child: Text("Profile screen")),
    );
  }
}
