import 'bloc/frame_eight_bloc.dart';
import 'models/frame_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameEightScreen extends StatelessWidget {
  const FrameEightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameEightBloc>(
      create: (context) => FrameEightBloc(FrameEightState(
        frameEightModelObj: FrameEightModel(),
      ))
        ..add(FrameEightInitialEvent()),
      child: FrameEightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameEightBloc, FrameEightState>(
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
                    imagePath: ImageConstant.img08TeamPreview,
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
