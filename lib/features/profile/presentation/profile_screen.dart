import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_app/asset_helpers/app_colors.dart';
import 'package:practice_app/asset_helpers/app_fonts.dart';
import 'package:practice_app/helpers/ui_helpers.dart';

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
      body: Column(
        children: [
          UIHelper.verticalSpace(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Stack(
                children: [
                  Positioned(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                    ),
                  ),

                  Positioned(
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColor.c4db8ff,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: AppColor.cffffff,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(children: [

                



              ],
            ),
          ),
        ],
      ),
    );
  }
}
