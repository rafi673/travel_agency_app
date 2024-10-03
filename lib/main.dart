

import 'package:fab_tech_sol/Screen/addnewinternationalsuppliers.dart';
import 'package:fab_tech_sol/Screen/all_leads.dart';

import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/Screen/local_supplier_detail.dart';
import 'package:fab_tech_sol/Screen/pacakge_details2.dart';
import 'package:fab_tech_sol/consts/consts.dart';


import 'package:fab_tech_sol/providers/manage_color_state.dart';

import 'package:fab_tech_sol/themedata.dart';

import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:fab_tech_sol/ui/dashboard_widget.dart';
import 'package:fab_tech_sol/ui/leads_widget.dart';



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/login_screen.dart';





void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => DrawerStateInfo()),

  ],
      child: MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeApp.myThemeData,
        title: AppStrings.appName,

        home:LoginPage()
        

        
        );




     



  }
}
