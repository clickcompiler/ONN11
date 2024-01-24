import 'bloc/frame_two_bloc.dart';
import 'models/frame_two_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameTwoScreen extends StatelessWidget {
  const FrameTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwoBloc>(
      create: (context) => FrameTwoBloc(FrameTwoState(
        frameTwoModelObj: FrameTwoModel(),
      ))
        ..add(FrameTwoInitialEvent()),
      child: FrameTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameTwoBloc, FrameTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 946.v,
              width: 448.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 946.v,
                        width: 448.h,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img02Login,
                    height: 926.v,
                    width: 428.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
