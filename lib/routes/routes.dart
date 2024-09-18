import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/ui/add_new_lead.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String dashboard = '/dashboard';
  static const String addNewLead = '/addNewLead';
  //static const String package='/package';
  static const String lead_details = '/LeadDetails';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      dashboard: (context) => const Dashboard(),
      addNewLead: (context) => const AddNewLead(),
      //package: (context)=> PackageWidget(),

      lead_details: (context) => const LeadDetails(),
    };
  }
}
