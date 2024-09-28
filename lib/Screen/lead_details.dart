import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/Screen/add_new_lead_form.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class LeadDetails extends StatelessWidget {
  const LeadDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: context.screenHeight * 0.017,
        ),

      
              

       Padding(
         padding: const EdgeInsets.only(right: 72),
         child: Row(
           children: [
             // Spacing on the left
             SizedBox(
               width: context.screenWidth * 0.04,
             ),
             
             // Back Button
           
            
           

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.white,
                ),
                child:
                    const Icon(Icons.arrow_back, size: 24, color: Colors.black),
              ),

             
               Text(
                'Details',
                style: TextStyle(fontSize: 22, fontFamily:fontFamilys ),
              ),

              Spacer(),
              GestureDetector(
                onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LeadDetails(),
                    ));
                },
                child: Container(
                  width: context.screenWidth * 0.13,
                  height: context.screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: const Color(0XFF333333),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Add new Lead",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: fontFamilys,
                        color: Colors.white,
                        fontSize: 16,),
                    
                        ),
                  )))
                    ])
          ),
        

            
            

        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        Container(
          height: context.screenHeight * 0.86,
          width: context.screenWidth * 0.9,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Color(0XFFE3F5FA)),
              BoxShadow(color: Colors.white, blurRadius: 7, spreadRadius: -4),
            ],
            border: Border.all(
              color: const Color(0XFFD4D7E3),
              width: .5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Agent Details:',
                        style:
                            AppTextstyless.packageClientDetailTextStyleHeading),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),

                  Row(
                    children: [
                      Text('Agent Name:',
                          style: AppTextstyless.packageClientDetailTextStyle),
                      SizedBox(
                        width: context.screenWidth * 0.066,
                      ),
                      const CircleAvatar(
                        radius: 20, // Adjust the radius for size
                        backgroundImage: AssetImage(
                            '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.01,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('Jhon Doe',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle),
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
                    child: Text(
                      'Client Details:',
                      style: AppTextstyless.packageClientDetailTextStyleHeading,
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Text(
                          'Client Name:',
                          style: AppTextstyless.packageClientDetailTextStyle,
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.064,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          'Jhon Doe',
                          style: AppTextstyless
                              .packageClientDetailTextStyleSubTitle,
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.09,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          'Phone No:',
                          style: AppTextstyless.packageClientDetailTextStyle,
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.0535,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          'XXXXXXXXXXX',
                          style: AppTextstyless
                              .packageClientDetailTextStyleSubTitle,
                        ),
                      ),
                    ],
                  ),

                  //SizedBox(height: context.screenHeight*0.002,),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Text(
                          'Price par pax',
                          style: TextStyle(
                              color: AppColor.buttonTextColors,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.215,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('QTY',
                            style: TextStyle(
                                color: AppColor.buttonTextColors,
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro')),
                      ),
                      SizedBox(width: context.screenWidth * 0.14),
                      Flexible(
                        flex: 1,
                        child: Text('Total per pax',
                            style: TextStyle(
                                color: AppColor.buttonTextColors,
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro')),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child:  Text(
                          'Adult:',
                          style:AppTextstyless
                              .packageClientDetailTextStyleSubTitle,
                        ),
                      ),

                      SizedBox(
                        width: context.screenWidth * 0.11,
                      ),

                      Flexible(
                        flex: 3,
                        child:  Text(
                          '1 000 000',
                          style:AppTextstyless
                              .packageClientDetailTextStyleSubTitle
                        ),
                      ),

                      SizedBox(
                        width: context.screenWidth * 0.09,
                      ),

                      Flexible(
                        flex: 2,
                        child:  Text(
                          'Adult',
                          style: AppTextstyless
                              .packageClientDetailTextStyleSubTitle
                        ),
                      ),

                      SizedBox(
                        width: context.screenWidth * 0.09,
                      ),

                      Flexible(
                        flex: 1,
                        child: Text(
                          '1',
                          style: AppTextstyless
                              .packageClientDetailTextStyleSubTitle,
                        ),
                      ),

                      SizedBox(
                        width: context.screenWidth * 0.14,
                      ),

                      // '1' Text (Second)
                      Flexible(
                        flex: 1,
                        child:  Text(
                          '1',
                          style:AppTextstyless
                              .packageClientDetailTextStyleSubTitle ,
                        ),
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
                        style:
                            AppTextstyless.packageClientDetailTextStyleHeading),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Row(
                    children: [
                      Text('Destination:',
                          style: AppTextstyless.packageClientDetailTextStyle),
                      SizedBox(
                        width: context.screenWidth * 0.066,
                      ),
                      Flexible(
                        flex: 2,
                        child:  Text('Sialkot Punjab 51040',
                            style:AppTextstyless
                              .packageClientDetailTextStyleSubTitle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.034,
                      ),
                      Flexible(
                        flex: 2,
                        child: Text('Booking Date:',
                            style: AppTextstyless.packageClientDetailTextStyle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.03,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('08/15/2024',
                            style: AppTextstyless
                              .packageClientDetailTextStyleSubTitle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.06,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('Travel Date:',
                            style: AppTextstyless.packageClientDetailTextStyle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),
                      Flexible(
                        flex: 1,
                        child:  Text('08/18/2024',
                            style: AppTextstyless
                              .packageClientDetailTextStyleSubTitle),
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
                    child: Text('Package Amount Details:',
                        style:
                            AppTextstyless.packageClientDetailTextStyleHeading),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.04,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Text('Package Amount:',
                            style: AppTextstyless.packageClientDetailTextStyle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.032,
                      ),
                      Flexible(
                        flex: 1,
                        child:  Text("\$232,89.00",
                            style: AppTextstyless
                              .packageClientDetailTextStyleSubTitle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.092,
                      ),
                      Flexible(
                        flex: 2,
                        child: Text('Paid Amount:',
                            style: AppTextstyless.packageClientDetailTextStyle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.03,
                      ),
                      Flexible(
                        flex: 1,
                        child:  Text(' \$232,89.00',
                            style:AppTextstyless
                              .packageClientDetailTextStyleSubTitle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.068,
                      ),
                      Flexible(
                        flex: 2,
                        child: Text('Outstanding Amount:',
                            style: AppTextstyless.packageClientDetailTextStyle),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.015,
                      ),
                      Flexible(
                        flex: 1,
                        child:  Text('\$232,89.00',
                            style:AppTextstyless
                              .packageClientDetailTextStyleSubTitle),
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
                ],
              ),
            ),
          ),
        )
            ])
    );
  }
}
