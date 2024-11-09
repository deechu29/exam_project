import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier{
  add(){
    
  }
  
}
   // Expanded(
          //   child: ListView.separated(
          //       itemBuilder: (context, index) => Card(
          //           color: Colors.grey,
          //           child: Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Row(
          //               children: [
          //                 Text("task"),
          //                 SizedBox(
          //                   width: 280,
          //                 ),
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.end,
          //                   children: [
          //                     Checkbox(
          //                       value: true,
          //                       onChanged: (value) => value,
          //                     ),
          //                     Icon(Icons.delete_outline_outlined)
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           )),
          //       separatorBuilder: (context, index) => SizedBox(
          //             height: 10,
          //           ),
          //       itemCount: 3),
          // )