import 'package:fab_tech_sol/Screen/add_new_local_suppliers.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/helper_function.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SupplierScreen extends StatelessWidget {
  const SupplierScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final providerValue = Provider.of<UserProvider>(context);
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.only(top: 25,left: 60,right: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Local Supplier',
                  style: TextStyle(
                      fontSize: 28,
        
                      fontFamily: fontFamilys,
        
                     // fontFamily: readexPro,
        
                      fontWeight: FontWeight.w700,
                      color: color),
                ),
                Row(
                  children: [
                    Widgets().searchTextField(),
                    Widgets().dropDownButton(providerValue.selectedItem2,
                        providerValue.dropdownItems2, (String? newValue) {
                      providerValue.updateSelectedItem2(newValue);
                    }, context),
                    const SizedBox(width: 15),
                    Widgets().button('Add Supplier', () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewLocalSupplier(),));
                    },)
                  ],
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                child: FittedBox(
                  child: SizedBox(
                    width: context.screenWidth,
                    child: PaginatedDataTable(
                      // rowsPerPage: 10,
                      columns: HelperUtil.createColumns(columnNames: [
                        "Company Name",
                        "Supplier Name",
                        "Supplier Address",
                        "Service",
                        "Company Address",
                        "Status",
                        "Action"
                      ]),
                      source: TaskDataSource(Widgets().tasks,context),

                      headingRowColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return Colors.white;
                      }),
                    ),
                  ),
                ))
          ],
        ),
            ),
      )
    );
  }
}