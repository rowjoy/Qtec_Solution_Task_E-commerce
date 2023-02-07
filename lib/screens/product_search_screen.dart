

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_e_commerce/services/colors.dart';

import '../widgets/custom_search_field.dart';
class ProductSearchScreen extends StatefulWidget {
  const ProductSearchScreen({super.key});

  @override
  State<ProductSearchScreen> createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appbackGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15,left: 8,right: 8),
          child: Column(
            children: [
              CustomSearchField(
                controller: TextEditingController(),
                onChanged: (value){

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

