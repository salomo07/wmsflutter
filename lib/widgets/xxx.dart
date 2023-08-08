// import 'package:flutter/material.dart';

// class CustomTextFormField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final Function() onChanged, onTapClear, onFieldSubmitted, onTapSearch;
//   final double height, marginVertical, marginHorizontal;
//   final bool enabled;

//   const CustomTextFormField({
//     Key key,
//     this.controller,
//     this.hintText,
//     this.onChanged,
//     this.onTapClear,
//     this.height,
//     this.marginVertical,
//     this.marginHorizontal,
//     this.enabled,
//     this.onFieldSubmitted,
//     this.onTapSearch,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(
//         vertical: marginVertical ?? 0,
//         horizontal: marginHorizontal ?? 0,
//       ),
//       height: height,
//       child: TextFormField(
//         onFieldSubmitted: (value) {
//           onFieldSubmitted();
//         },
//         enabled: enabled ?? true,
//         textInputAction: TextInputAction.done,
//         keyboardType: TextInputType.text,
//         controller: controller ?? null,
//         style: nunitoTextFont.copyWith(fontSize: 12),
//         onChanged: (value) {
//           onChanged();
//         },
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.only(
//             top: 10,
//             left: 10,
//             right: 10,
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           hintText: hintText,
//           hintStyle: nunitoTextFont.copyWith(
//             fontSize: 10,
//             color: Color(0xff92949D),
//           ),
//           suffixIcon: Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               if (controller.text.isNotEmpty)
//                 InkWell(
//                   onTap: () {
//                     onTapClear();
//                   },
//                   child: Icon(
//                     Icons.clear,
//                     size: 20,
//                     color: Colors.red,
//                   ),
//                 ),
//               if (controller.text.isNotEmpty) SizedBox(width: 20),
//               InkWell(
//                 onTap: () {
//                   onTapSearch();
//                 },
//                 child: Icon(
//                   Icons.search,
//                   size: 20,
//                   color: Colors.grey,
//                 ),
//               ),
//               SizedBox(width: 10),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
