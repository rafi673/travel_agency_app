import 'package:fab_tech_sol/Screen/pacakge_details2.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/resources/navigation_util.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widget/widgets.dart';
import 'package:flutter/material.dart';

import '../resources/helper_function.dart';
import '../resources/responsive.dart';
import 'add_new_create_package_detail.dart';

class PackageDetail extends StatelessWidget {
  const PackageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: context.screenHeight * 0.01,
        ),
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * 0.04),
            Responsive.isDesktop(context)?SizedBox.shrink():
            Row(
              children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                        child: Icon(Icons.arrow_back)),
                  ),
                SizedBox(width: 10,),
                Text(
                  'Packages Details',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: fontFamilys,
                      fontWeight: FontWeight.bold,
                      color: color),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Responsive.isDesktop(context)?
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                          child: Icon(Icons.arrow_back)),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Packages Details',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: fontFamilys,
                          fontWeight: FontWeight.bold,
                          color: color),
                    ),
                  ],
                ):SizedBox.shrink(),
                Row(
                  children: [
                    Widgets().searchTextField(),
                     SizedBox(width: context.screenWidth * 0.005,),

                     const SizedBox(width: 15),
                     Widgets().button(
                       'Add New Package',
                           () {
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => PackageDetails2(),
                             ));
                       },
                     )

                  ],
                ),
              ],
            ),


            SizedBox(height: context.screenWidth * 0.012),
            Expanded(
              child: SingleChildScrollView(
                child: PaginatedDataTable(
                  rowsPerPage: 10,
                  dataRowHeight: 62,
                  columns: HelperUtil.createColumns(columnNames: [
                    "Client Name",
                    "Phone Number",
                    "Agent Name",
                    "Phone Number",
                    "Supplier Name",
                    "Phone Number",
                    "Action",
                  ]),
                  source: PackageDataSource(Widgets().package, context),
                  headingRowColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors.white;
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
