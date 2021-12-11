// import 'package:flutter/material.dart';

// class DefaultDismissable extends StatelessWidget {
//   const DefaultDismissable({Key? key}) : super(key: key);



//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//                             key: ValueKey<int>(),
//                             direction: DismissDirection.endToStart,
//                             background: Container(
//                               color: ConstColors.warn,
//                               child: Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Text(
//                                     'DELETE',
//                                     style: ConstTextStyles.textField.copyWith(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             child: Container(
//                               color: ConstColors.primaryColor,
//                               child: ListTile(
//                                 title: Text(exercise.name, style: ConstTextStyles.textField),
//                                 trailing:
//                                     Icon(Icons.drag_handle, color: ConstColors.textFieldColor),
//                               ),
//                             ),
//                           ),
//   }
// }
