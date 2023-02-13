// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_e_commerce/cubit/search_product_cubit.dart';
import 'package:task_e_commerce/repository/search_product_repository.dart';
import 'package:task_e_commerce/screens/product_search_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchProductCubit(SearchRepository()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      
        // ignore: prefer_const_literals_to_create_immutables
        localizationsDelegates:[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        // ignore: prefer_const_literals_to_create_immutables
        supportedLocales: [
          const Locale('en', 'US'), // English
          const Locale('he', 'IL'),
          const Locale('bn', 'BD'), // Hebrew
        ],
        home: ProductSearchScreen(),
      ),
    );
  }
}
