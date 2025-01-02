// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// class Page5 extends StatefulWidget {
//   const Page5({super.key});
//
//   @override
//   State<Page5> createState() => _Page5State();
// }
//
// class _Page5State extends State<Page5> {
//   String? radioValue = "female"; // Default value
//   // List <String> cbValue = [cb1, cb2, cb3];
//   bool isFlutterSelected = false;
//   bool isAndroidSelected = false;
//   bool isSpringBootSelected = false;
//
//   String? selectedRound = 'Round 59'; // Default selected value
//
//   DateTime selectedDate = DateTime.now(); // Default to current date
//   TimeOfDay selectedTime = TimeOfDay.now(); // Default to current time
//
//   // Function to select a date
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: selectedDate, // Current selected date
//       firstDate: DateTime(2000), // Earliest selectable date
//       lastDate: DateTime(2101), // Latest selectable date
//     );
//     if (pickedDate != null && pickedDate != selectedDate)
//       setState(() {
//         selectedDate = pickedDate;
//       });
//   }
//
//   // Function to select time
//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: selectedTime, // Current selected time
//     );
//     if (pickedTime != null && pickedTime != selectedTime)
//       setState(() {
//         selectedTime = pickedTime;
//       });
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
//
//     return Scaffold(
//       body: Padding(
//           padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
//           child: Card(
//             child: Column(
//               children: [
//                 Column(
//                   children: [
//                     Text("Gender"),
//                     SizedBox(height: 10,),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           Radio<String>(
//                             value: "female",
//                             groupValue: radioValue,
//                             onChanged: (String? value) {
//                               setState(() {
//                                 radioValue = value; // Update state
//                               });
//                             },
//                           ),
//                           Text("Female"),
//                         ],
//                       ),
//                     ),
//                     Row(children: [
//                       Radio<String>(
//                         value: "male",
//                         groupValue: radioValue,
//                         onChanged: (String? value) {
//                           setState(() {
//                             radioValue = value; // Update state
//                           });
//                         },
//                       ),
//                       Text("Male"),
//                     ]),
//                     Row(
//                       children: [
//                         Radio<String>(
//                           value: "others",
//                           groupValue: radioValue,
//                           onChanged: (String? value) {
//                             setState(() {
//                               radioValue = value; // Update state
//                             });
//                           },
//                         ),
//                         Text("Others"),
//                       ],
//                     ),
//                     // Column(
//                     //   children: [
//                     //     Container(
//                     //        child: CheckboxListTile(
//                     //             value: cb1,
//                     //             onChanged: (value){
//                     //               setState(() {
//                     //                 cb1=value;
//                     //                 m1();
//                     //               });
//                     //             }),
//                     //
//                     //
//                     //
//                     //     ),
//                     //   ],
//                     // ),
//                   // Row(
//                   // mainAxisAlignment: MainAxisAlignment.center,
//                   // ),
//                     // Flutter Checkbox
//                     Text("Check Box"),
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: isFlutterSelected,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               isFlutterSelected = value ?? false; // Update state
//                             });
//                           },
//                         ),
//                         Text("Flutter"),
//                       ],
//                     ),
//                     // Android Checkbox
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: isAndroidSelected,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               isAndroidSelected = value ?? false; // Update state
//                             });
//                           },
//                         ),
//                         Text("Android"),
//                       ],
//                     ),
//                     // Spring Boot Checkbox
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: isSpringBootSelected,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               isSpringBootSelected = value ?? false; // Update state
//                             });
//                           },
//                         ),
//                         Text("Spring Boot"),
//                       ],
//                     ),
//                     // Display selected values
//                     // Text(
//                     //   'Flutter Selected: $isFlutterSelected',
//                     //   style: TextStyle(fontSize: 18),
//                     // ),
//                     // Text(
//                     //   'Android Selected: $isAndroidSelected',
//                     //   style: TextStyle(fontSize: 18),
//                     // ),
//                     // Text(
//                     //   'Spring Boot Selected: $isSpringBootSelected',
//                     //   style: TextStyle(fontSize: 18),
//                     // ),
//                     Text("Drop down"),
//                     Row(
//                       children: [
//                         DropdownButton<String>(
//                           value: selectedRound, // Currently selected value
//                           items: <String>['Round59','Round 60', 'Round 61']
//                               .map<DropdownMenuItem<String>>((String value) {
//                             return DropdownMenuItem<String>(
//                               value: value,
//                               child: Text(value), // Display value in dropdown
//                             );
//                           }).toList(),
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               selectedRound = newValue; // Update the selected value
//                             });
//                           },
//                         ),
//                         // Display the selected value
//                       ],
//                     ),
//                     Text("Date & Time"),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Column(
//                         children: [
//                           ElevatedButton(
//                             onPressed: () => _selectDate(context),
//                             child: Text('Select Date'),
//                           ),
//                           // Display the selected date
//                           Text(
//                             "Selected Date: $formattedDate", // Display the formatted date
//                             style: TextStyle(fontSize: 18),
//                           ),
//                           SizedBox(height: 20),
//
//                           // Time Picker Button
//                           ElevatedButton(
//                             onPressed: () => _selectTime(context),
//                             child: Text('Select Time'),
//                           ),
//                           // Display the selected time
//                           Text(
//                             "Selected Time: ${selectedTime.format(context)}", // Display selected time
//                             style: TextStyle(fontSize: 18),
//                           ),
//                         ],
//                       ),
//                     )
//                 ],
//
//                 ),
//               ],
//             ),
//
//
//           ),
//             ),
//           );
//   }
// }
