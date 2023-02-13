import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

import '../services/colors.dart';
class CustomSearchField extends StatelessWidget {
 final void Function(String)? onChanged;
 final TextEditingController? controller;
  const CustomSearchField({
    Key? key,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.appWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
          style: TextStyle(
            color: AppColors.appBlackColor,
            fontSize: 18,
          ),
          controller: controller,
          onChanged: onChanged ,
          decoration: InputDecoration(
              filled: true,
              hintText: "কাঙ্ক্ষিত পণ্যটি খুঁজুন",
              hintStyle: BengaliFonts.mina(),
              fillColor: AppColors.appWhiteColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              suffixIcon: Icon(Icons.search,color: AppColors.appbackGroundColor,size: 30,)
            ),
          ),
        ),
      ),
    );
  }
}