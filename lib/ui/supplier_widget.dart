import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SupplierWidget {
  Widget supplier(BuildContext context) {
    final providerValue = Provider.of<UserProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text(
                    'Local Supplier',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    children: [
                      Widgets().searchTextField(),
                      Widgets().dropDownButton(providerValue.selectedItem2,
                          providerValue.dropdownItems2, (String? newValue) {
                        providerValue.updateSelectedItem2(newValue);
                      }, context),
                      const SizedBox(width: 15),
                      Widgets().button('Add Supplier', () {})
                    ],
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 25, right: 100, left: 130),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                  child: PaginatedDataTable(
                    rowsPerPage: 10,
                    columns: [
                      DataColumn(
                        label: Widgets().agentFormText('Company Name', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Supplier Name', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Supplier Address', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Service', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Company Address', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Status', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Action', 14),
                      ),
                    ],
                    source: TaskDataSource(Widgets().tasks),
                    headingRowColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return Colors.white;
                    }),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
