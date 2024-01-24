import 'bloc/frame_twelve_bloc.dart';
import 'models/frame_twelve_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameTwelveScreen extends StatelessWidget {
  const FrameTwelveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwelveBloc>(
      create: (context) => FrameTwelveBloc(FrameTwelveState(
        frameTwelveModelObj: FrameTwelveModel(),
      ))
        ..add(FrameTwelveInitialEvent()),
      child: FrameTwelveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameTwelveBloc, FrameTwelveState>(
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
                    imagePath: ImageConstant.img12Stats,
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
