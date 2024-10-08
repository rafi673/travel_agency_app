import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/mobile/mobile_add_new_agent.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widget/addnewagent.dart';
import 'package:fab_tech_sol/widget/back_button_title_avatar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewAgent extends StatelessWidget {
  const AddNewAgent({super.key});

  @override
  Widget build(BuildContext context) {
    final imageProvider = Provider.of<UserProvider>(context);
    return  Responsive.isDesktop(context) || Responsive.isTablet(context)?  Scaffold(
      body: SingleChildScrollView(
        child: 
           Column(
            children: [
              BackButtonAvatar(
                text1: 'Add New Agent',
              ),
              const Divider(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.screenWidth * .08),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.screenHeight * 0.05,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Agent Details',
                          style: TextStyle(
                              fontSize: 23,
                              color: AppColor.Indigo_Dye,
                              fontFamily: fontFamilys,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: imageProvider.imageUrl != null
                                        ? DecorationImage(
                                            image:
                                                NetworkImage(imageProvider.imageUrl!),
                                            fit: BoxFit.cover,
                                          )
                                        : null,
                                    border: Border.all(
                                        color: AppColor.packageFormColor,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              SizedBox(
                                width: context.screenWidth * 0.01,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  await imageProvider.pickImage();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0XFF11345A),
                                    minimumSize: Size(
                                        context.screenWidth * 0.12,
                                        context.screenHeight * 0.08)),
                                child: const Row(
                                  mainAxisSize: MainAxisSize
                                      .min, // Make Row as wide as the content
                                  children: [
                                    Icon(
                                      Icons.file_upload_outlined,
                                      color: Colors.white,
                                    ), // Icon
                                    SizedBox(
                                        width:
                                            8), // Space between icon and text
                                    Text(
                                      'Upload Image',
                                      style: TextStyle(color: Colors.white),
                                    ), // Text
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                              height: context.screenHeight * 0.3,
                              width: context.screenWidth * 0.2,
                              child: Image.asset(
                                  '${ImagesAssets.imagePath}XMLID.png'))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.01,
                    ),
                    Row(
                      children: [
                        AddNewAgentTitlelAndDescription(
                            text1: 'First Name', text2: 'John Doe'),
                        const SizedBox(
                          width: 20,
                        ),
                        AddNewAgentTitlelAndDescription(
                            text1: 'Last Name', text2: 'John Doe'),
                        const SizedBox(
                          width: 20,
                        ),
                        AddNewAgentTitlelAndDescription(
                            text1: 'Phone Number', text2: '+1 (555) 987-6543'),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Row(
                      children: [
                        AddNewAgentTitlelAndDescription(
                            text1: 'E-Mail', text2: 'john.smith@gmail.com'),
                        const SizedBox(
                          width: 20,
                        ),
                        AddNewAgentTitlelAndDescription(
                            text1: 'Password', text2: 'Demo123456'),
                        const SizedBox(
                          width: 20,
                        ),
                        AddNewAgentTitlelAndDescription(
                            text1: 'Location',
                            text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 45,
                          width: 140,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFFD5D5D5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              onPressed: () {},
                              child: const Text(
                                'Cancle',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black),
                              )),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.02,
                        ),
                        SizedBox(
                          height: 45,
                          width: 140,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF83D0E3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              onPressed: () {},
                              child: const Text(
                                'Save',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.2,
                    )
                  ],
                ),
              )
            ],
          ),
        
      ),
    
   ) : MobileAddNewAgent();
  }
}
