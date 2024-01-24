import 'bloc/frame_twentytwo_bloc.dart';
import 'models/frame_twentytwo_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameTwentytwoScreen extends StatelessWidget {
  const FrameTwentytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentytwoBloc>(
      create: (context) => FrameTwentytwoBloc(FrameTwentytwoState(
        frameTwentytwoModelObj: FrameTwentytwoModel(),
      ))
        ..add(FrameTwentytwoInitialEvent()),
      child: FrameTwentytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameTwentytwoBloc, FrameTwentytwoState>(
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
                    imagePath: ImageConstant.img03Verification,
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
