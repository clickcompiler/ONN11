// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:saniocustomer/theme/const_color.dart';

// // import 'package:flutter_form_builder/flutter_form_builder.dart';

// // import 'package:form_builder_validators/form_builder_validators.dart';

// // class MaritalStatusDropDownField extends StatelessWidget {
// //   final String name;
// //   final String? labelText, hintText, initialValue;
// //   final bool? enabled;
// //   final String? Function(dynamic)? validator;
// //   final ValueChanged<String?>? onChanged;
// //   final void Function(Object?)? onSaved;
// //   final FocusNode? focusNode;
// //   final dynamic Function(String?)? valueTransformer;
// //   final void Function()? onReset;
// //   const MaritalStatusDropDownField(
// //       {Key? key,
// //       required this.name,
// //       this.enabled,
// //       this.onChanged,
// //       this.validator,
// //       this.onSaved,
// //       this.initialValue,
// //       this.onReset,
// //       this.labelText,
// //       this.hintText = 'Select Marital Status',
// //       this.focusNode,
// //       this.valueTransformer})
// //       : super(key: key);
// //   static const List<String> maritalStatuses = <String>[
// //     'Single',
// //     'Married',
// //     'Divorced',
// //     'Widowed',
// //     'Separated'
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return FormBuilderField<String>(
// //       name: name,
// //       focusNode: focusNode,
// //       autovalidateMode: AutovalidateMode.onUserInteraction,
// //       valueTransformer: valueTransformer,
// //       initialValue: initialValue,
// //       onSaved: onSaved,
// //       onReset: onReset,
// //       validator: validator ??
// //           FormBuilderValidators.required(
// //               errorText: 'Please select your marital status'),
// //       onChanged: onChanged,
// //       enabled: enabled ?? true,
// //       key: key,
// //       builder: (FormFieldState<String> field) {
// //         return DropdownButtonHideUnderline(
// //           child: DropdownButtonFormField2<String>(
// //             dropdownPadding: const EdgeInsets.all(0),
// //             value: field.value?.isEmpty ?? true ? null : field.value,
// //             isDense: true,
// //             dropdownMaxHeight: 100.h,
// //             onChanged: field.didChange,
// //             dropdownWidth: 300.w,
// //             offset: const Offset(-20, -20),
// //             dropdownDecoration: const BoxDecoration(
// //                 // borderRadius: BorderRadius.circular(12.r),
// //                 ),
// //             icon: const Icon(Icons.arrow_drop_down_rounded),
// //             // decoration: InputDecoration(
// //             //   border: OutlineInputBorder(
// //             //     borderRadius: BorderRadius.circular(12.r),
// //             //   ),
// //             //   labelText: labelText,
// //             //   hintText: hintText,
// //             //   errorText: field.errorText,
// //             // ),
// //             items: maritalStatuses
// //                 .map((String value) => DropdownMenuItem<String>(
// //                       value: value,
// //                       child: Text(value),
// //                     ))
// //                 .toList(growable: false),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }

// // ignore: must_be_immutable
// class DropDownArray extends StatefulWidget {
//   DropDownArray(
//       {super.key,
//       required this.items,
//       this.selectedValue,
//       this.onChanged,
//       this.hint});
//   List items;
//   String? selectedValue;
//   Widget? hint;
//   Function(Object?)? onChanged;
//   @override
//   State<DropDownArray> createState() => _DropDownArrayState();
// }

// class _DropDownArrayState extends State<DropDownArray> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       padding: const EdgeInsets.all(0),
//       decoration: BoxDecoration(
//           color: White01,
//           border: Border.all(
//             color: Primary1,
//           ),
//           borderRadius: BorderRadius.circular(8)),
//       child: Row(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10, right: 20),
//               child: DropdownButtonHideUnderline(
//                 child: DropdownButton2(
//                     dropdownMaxHeight: 300,
//                     dropdownWidth: 300,
//                     offset: const Offset(20, -5),
//                     icon: const Icon(
//                       Icons.arrow_drop_down_rounded,
//                       color: primaryBlack,
//                     ),
//                     dropdownDecoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         border: Border.all(color: primaryBlack, width: 2)),
//                     hint: widget.hint,
//                     items: widget.items,
//                     //  widget.item
//                     //     .map((item) => DropdownMenuItem<String>(
//                     //           value: item,
//                     //           child: SizedBox(
//                     //             width: MediaQuery.of(context).size.width / 1.8,
//                     //             child: LabelText1(
//                     //               text: item,

//                     //               // style: const TextStyle(
//                     //               //   fontSize: 14,
//                     //               // ),
//                     //             ),
//                     //           ),
//                     //         ))
//                     //     .toList(),
//                     value: widget.selectedValue,
//                     onChanged: widget.onChanged
//                     // (value) {
//                     //   setState(() {
//                     //     selectedValue = value as String;
//                     //   });
//                     // },
//                     ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   MyWidget({super.key, this.onChanged, this.items, this.hint});
//   Function(Object?)? onChanged;
//   List<DropdownMenuItem<Object>>? items;
//   String? hint;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 500,
//       height: 48,
//       padding: const EdgeInsets.all(10.0),
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//         color: Colors.white,
//       ),
//       child: DropdownButton(
//         underline: Container(),
//         isExpanded: true,
//         hint: Text(hint ?? ""),
//         icon: const Icon(Icons.keyboard_arrow_down),
//         items: items,
//         onChanged: onChanged,

//         // },
//       ),
//     );
//   }
// }
