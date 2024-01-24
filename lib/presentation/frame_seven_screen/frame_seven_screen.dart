import 'bloc/frame_seven_bloc.dart';
import 'models/frame_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameSevenScreen extends StatelessWidget {
  const FrameSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSevenBloc>(
      create: (context) => FrameSevenBloc(FrameSevenState(
        frameSevenModelObj: FrameSevenModel(),
      ))
        ..add(FrameSevenInitialEvent()),
      child: FrameSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameSevenBloc, FrameSevenState>(
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
                    imagePath: ImageConstant.img07SelectCaptain,
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
