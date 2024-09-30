import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/Screen/pacakge_details2.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class ClientDetailPackage extends StatelessWidget {
  const ClientDetailPackage({super.key});

  @override
  Widget build(BuildContext context) {
     final providerValue = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          Row(
            children: [
              const Text(
                'Client Details',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Readex Pro bold',
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF11345A),
                ),
              ),
              SizedBox(
                width: context.screenWidth * 0.2,
              ),
              Widgets().searchTextField(),
           
                Widgets().dropDownButton(providerValue.selectedItem2,
                  providerValue.dropdownItems2, (String? newValue) {
                providerValue.updateSelectedItem2(newValue);
              }, context),
              SizedBox(
                width: context.screenWidth * 0.01,
              ),
              Widgets().button(
                'Add New Package',
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PacakgeDetails2(),
                      ));
                },
              )
            ],
          ),
          SizedBox(
            height: context.screenHeight * 0.018,
          ),
          Container(
            height: context.screenHeight * 0.86,
            width: context.screenWidth * 0.9,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: Color(0XFFE3F5FA)),
                BoxShadow(
                    color: Colors.white, blurRadius: 7, spreadRadius: -4),
              ],
              border: Border.all(
                color: const Color(0XFFD4D7E3),
                width: .5,
              ),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Client Details:',
                          style: AppTextstyless
                              .packageClientDetailTextStyleHeading),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.03,
                    ),
      
                    Row(
                      children: [
                        Text('Client Name:',
                            style: AppTextstyless
                                .packageClientDetailTextStyle),
                        SizedBox(width: context.screenWidth * 0.065),
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                              '${ImagesAssets.imagePath}Ellipse.png'),
                        ),
                        SizedBox(width: context.screenWidth * 0.01),
                        Text('Jhon Doe',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle),
                        SizedBox(width: context.screenWidth * 0.0386),
                        Text('Phone Number:',
                            style: AppTextstyless
                                .packageClientDetailTextStyle),
                        SizedBox(width: context.screenWidth * 0.03),
                        Text('+21 999 909 9090',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle),
                      ],
                    ),
      
                    SizedBox(
                      height: context.screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        Text(
                          'Price par pax',
                          style: TextStyle(
                              color: AppColor.buttonTextColors,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Readex Pro'),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.205,
                        ),
                        Text(
                          'QTY',
                          style: TextStyle(
                              color: AppColor.buttonTextColors,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Readex Pro'),
                        ),
                        SizedBox(width: context.screenWidth * 0.15),
                        Text(
                          'Total per pax',
                          style: TextStyle(
                              color: AppColor.buttonTextColors,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Readex Pro'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Adult:',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Readex Pro',
                              color: Color(0XFF0C1421)),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.115,
                        ),
                        const Text(
                          '1 000 000',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Readex Pro',
                              color: Color(0XFF0C1421)),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.082,
                        ),
                        const Text('Adult',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 16,
                                fontFamily: 'Readex Pro')),
                        SizedBox(
                          width: context.screenWidth * 0.1,
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Readex Pro',
                              color: Color(0XFF0C1421)),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.14,
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Readex Pro',
                              color: Color(0XFF0C1421)),
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.02,
                        ),
                      ],
                    ),
                    Divider(
                      endIndent: 4,
                      indent: 4,
                      color: AppColor.dividerColor,
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Agent Details:',
                        style: AppTextstyless
                            .packageClientDetailTextStyleHeading,
                      ),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text('Client Name:',
                                style: AppTextstyless
                                    .packageClientDetailTextStyle),
                            SizedBox(
                              width: context.screenWidth * 0.065,
                            ),
                            const CircleAvatar(
                              radius: 20, // Adjust the radius for size
                              backgroundImage: AssetImage(
                                  '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            Text('Jhon Doe',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),
                            //  const Text('Jhon doe',style: TextStyle(fontSize: 13),),
                            SizedBox(
                              width: context.screenWidth * 0.04,
                            ),
                            Text('Phone No:',
                                style: AppTextstyless
                                    .packageClientDetailTextStyle),
                            SizedBox(
                              width: context.screenWidth * 0.02,
                            ),
                            Text('XXXXXXXXXXX',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    //SizedBox(height: context.screenHeight*0.002,),
                    Divider(
                      endIndent: 4,
                      indent: 4,
                      color: AppColor.dividerColor,
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Supplier Details:',
                        style: AppTextstyless
                            .packageClientDetailTextStyleHeading,
                      ),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text('Client Name:',
                                style: AppTextstyless
                                    .packageClientDetailTextStyle),
                            SizedBox(
                              width: context.screenWidth * 0.065,
                            ),
                            const CircleAvatar(
                              radius: 20, // Adjust the radius for size
                              backgroundImage: AssetImage(
                                  '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            Text('Jhon Doe',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),
                            //  const Text('Jhon doe',style: TextStyle(fontSize: 13),),
                            SizedBox(
                              width: context.screenWidth * 0.04,
                            ),
                            Text('Phone No:',
                                style: AppTextstyless
                                    .packageClientDetailTextStyle),
                            SizedBox(
                              width: context.screenWidth * 0.02,
                            ),
                            Text('XXXXXXXXXXX',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
      
                    Divider(
                      endIndent: 4,
                      indent: 4,
                      color: AppColor.dividerColor,
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Trip Details:',
                          style: AppTextstyless
                              .packageClientDetailTextStyleHeading),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        Text('Destination:',
                            style: AppTextstyless
                                .packageClientDetailTextStyle),
                        SizedBox(
                          width: context.screenWidth * 0.052,
                        ),
                         Text('Sialkot Punjab 51040',
                            style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                        SizedBox(
                          width: context.screenWidth * 0.0355,
                        ),
                        Text('Booking Date:',
                            style: AppTextstyless
                                .packageClientDetailTextStyle),
                        SizedBox(
                          width: context.screenWidth * 0.02,
                        ),
                         Text('08/15/2024',
                            style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                        SizedBox(
                          width: context.screenWidth * 0.05,
                        ),
                        Text('Travel Date:',
                            style: AppTextstyless
                                .packageClientDetailTextStyle),
                        SizedBox(
                          width: context.screenWidth * 0.05,
                        ),
                      Text('08/18/2024',
                            style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Divider(
                      endIndent: 4,
                      indent: 4,
                      color: AppColor.dividerColor,
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Package Amount Details:',
                          style: AppTextstyless
                              .packageClientDetailTextStyleHeading),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        Text('Package Amount:',
                            style: AppTextstyless
                                .packageClientDetailTextStyle),
                        SizedBox(
                          width: context.screenWidth * 0.021,
                        ),
                        Text(
                          "\$232,89.00",
                       style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                        SizedBox(
                          width: context.screenWidth * 0.091,
                        ),
                        Text('Paid Amount:',
                            style: AppTextstyless
                                .packageClientDetailTextStyle),
                        SizedBox(
                          width: context.screenWidth * 0.02,
                        ),
                         Text(
                          ' 232,89.00',
                          style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                        SizedBox(
                          width: context.screenWidth * 0.065,
                        ),
                        Text('Outstanding Amount:',
                            style: AppTextstyless
                                .packageClientDetailTextStyle),
                        SizedBox(
                          width: context.screenWidth * 0.015,
                        ),
                        Text('\$232,89.00',
                            style: AppTextstyless.packageClientDetailTextStyleSubTitle),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Divider(
                      endIndent: 4,
                      indent: 4,
                      color: AppColor.dividerColor,
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
