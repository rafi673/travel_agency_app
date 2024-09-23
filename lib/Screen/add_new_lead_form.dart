// import 'package:fab_tech_sol/consts/consts.dart';
// import 'package:fab_tech_sol/providers/provider.dart';
// import 'package:fab_tech_sol/widgets/check_box.dart';
// import 'package:fab_tech_sol/widgets/circular_avatar.dart';
// import 'package:fab_tech_sol/widgets/final_button.dart';
// import 'package:fab_tech_sol/widgets/text_form_field.dart';
// import 'package:fab_tech_sol/widgets/text_form_note_field.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class AddNewLeadForm extends StatefulWidget {
//   const AddNewLeadForm({super.key});

//   @override
//   State<AddNewLeadForm> createState() => _AddNewLeadFormState();
// }

// class _AddNewLeadFormState extends State<AddNewLeadForm> {
//   List<String> agents = ['John Doe', 'Jane Smith', 'James Bond', 'Tony Stark'];
//   List<String> filteredAgents = [];

//   // TextController for the search field
//   TextEditingController searchController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     filteredAgents = agents;
//   }

//   void filterAgents(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         filteredAgents = agents;
//       } else {
//         filteredAgents = agents
//             .where((agent) => agent.toLowerCase().contains(query.toLowerCase()))
//             .toList();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Text(''),
//         title: Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       shape: const CircleBorder(),
//                       padding: const EdgeInsets.all(5),
//                       minimumSize: const Size(40, 40),
//                     ),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Icon(Icons.arrow_back, color: Colors.black),
//                   ),
//                   const SizedBox(width: 10),
//                   Text(
//                     'Add New Lead',
//                     style: TextStyle(
//                         color: addLeadButtonColor,
//                         fontSize: 17,
//                         fontFamily: readexPro),
//                   ),
//                 ],
//               ),
//               CircularAvatar().circularAvatar(),
//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 5),
//             const Divider(
//               thickness: 0.5,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 115),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Add New Lead Details',
//                           style: TextStyle(
//                               color: color,
//                               fontFamily: readexPro,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 15),
//                         ),
//                         const SizedBox(height: 20),
//                         Text(
//                           'Agent Details',
//                           style: TextStyle(
//                               color: color,
//                               fontFamily: readexPro,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17),
//                         ),
//                         const SizedBox(height: 15),
//                         Text(
//                           'Agent Name',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 13,
//                               fontFamily: readexPro,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 5),
//                         Textfield().textFormField(),
//                       ],
//                     ),
//                   ),
//                   Image(
//                       height: 200,
//                       width: 200,
//                       image: AssetImage('${imageUrl}form.png')),
//                 ],
//               ),
//             ),
//             const Divider(
//               thickness: 0.5,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 115),
//               child: Text(
//                 'Client Details',
//                 style: TextStyle(
//                     color: color,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: readexPro,
//                     fontSize: 17),
//               ),
//             ),
//             const SizedBox(height: 15),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 115),
//               child: Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Client Name',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 13,
//                             fontFamily: readexPro,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 5),
//                       Textfield().textFormField(),
//                     ],
//                   ),
//                   const SizedBox(width: 15),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Phone Number',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 13,
//                             fontFamily: readexPro,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 5),
//                       Textfield().textFormField(),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(height: 5),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 115),
//               child: SizedBox(
//                 width: 800,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Different rates for different category',
//                       style: TextStyle(
//                         color: addLeadButtonColor,
//                         fontFamily: readexPro,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           child: Text(
//                             'Name',
//                             style: TextStyle(
//                                 color: addLeadButtonColor,
//                                 fontSize: 16,
//                                 fontFamily: readexPro),
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                             'Number of People',
//                             style: TextStyle(
//                                 color: addLeadButtonColor,
//                                 fontSize: 16,
//                                 fontFamily: readexPro),
//                           ),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Text(
//                               'Budget',
//                               style: TextStyle(
//                                   color: addLeadButtonColor,
//                                   fontSize: 16,
//                                   fontFamily: readexPro),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                             child: Text(
//                           'Adult',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontFamily: readexPro),
//                         )),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                         const SizedBox(width: 15),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 7),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text('Child',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: readexPro)),
//                         ),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                         const SizedBox(width: 15),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 7),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text('Infant',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: readexPro)),
//                         ),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                         const SizedBox(width: 15),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 7),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text('Senior Citizen',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: readexPro)),
//                         ),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                         const SizedBox(width: 15),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 7),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text('Other',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: readexPro)),
//                         ),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                         const SizedBox(width: 15),
//                         Expanded(
//                           child: Textfield().textFormField(),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Divider(thickness: 0.5),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 115),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     child: Text(
//                       'Trip Details',
//                       style: TextStyle(
//                           color: color,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: readexPro,
//                           fontSize: 17),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Destination',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 13,
//                                 fontFamily: readexPro,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Textfield().textFormField(),
//                         ],
//                       ),
//                       const SizedBox(width: 15),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Travel Date',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 13,
//                                 fontFamily: readexPro,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Textfield().textFormField(),
//                         ],
//                       ),
//                       const SizedBox(width: 15),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Departure Date',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 13,
//                                 fontFamily: readexPro,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Textfield().textFormField(),
//                         ],
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             const Divider(thickness: 0.5),
//             Padding(
//               padding: const EdgeInsets.only(left: 115),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     child: Text(
//                       'Additional Notes',
//                       style: TextStyle(
//                           color: color,
//                           fontFamily: readexPro,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17),
//                     ),
//                   ),
//                   Text(
//                     'Add Note',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 13,
//                         fontFamily: readexPro,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   TextFormNoteField().textFormNoteField(5, 775),
//                 ],
//               ),
//             ),
//             const Divider(
//               thickness: 0.5,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 115),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     child: Text(
//                       'Best Way to Reach You',
//                       style: TextStyle(
//                           color: color,
//                           fontFamily: readexPro,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17),
//                     ),
//                   ),
//                   Consumer<UserProvider>(
//                     builder: (context, userProvider, child) {
//                       return Row(
//                         children: [
//                           CheckBox().checkBox(userProvider.isCheckedEmail,
//                               (bool? newValue) {
//                             userProvider.toggleCheckboxEmail(newValue ?? false);
//                           }),
//                           const SizedBox(width: 5),
//                           Text(
//                             'Email',
//                             style: TextStyle(
//                                 color: Colors.black, fontFamily: readexPro),
//                           ),
//                           const SizedBox(width: 80),
//                           CheckBox().checkBox(userProvider.isCheckedSMS,
//                               (bool? newValue) {
//                             userProvider.toggleCheckboxSMS(newValue ?? false);
//                           }),
//                           Text(
//                             'SMS',
//                             style: TextStyle(
//                                 color: Colors.black, fontFamily: readexPro),
//                           ),
//                           const SizedBox(width: 80),
//                           CheckBox().checkBox(userProvider.isCheckedWhatsApp,
//                               (bool? newValue) {
//                             userProvider
//                                 .toggleCheckboxWhatsApp(newValue ?? false);
//                           }),
//                           Text(
//                             'WhatsApp',
//                             style: TextStyle(
//                                 color: Colors.black, fontFamily: readexPro),
//                           ),
//                           const SizedBox(width: 5),
//                         ],
//                       );
//                     },
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 70),
//                     child: Row(
//                       children: [
//                         FinalButton().finalButton(
//                             'Cancel', const Color(0XFFE7E7E7), () {}),
//                         const SizedBox(width: 15),
//                         FinalButton()
//                             .finalButton('Save', const Color(0XFF83D0E3), () {})
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }