import 'bloc/frame_nine_bloc.dart';
import 'models/frame_nine_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameNineScreen extends StatelessWidget {
  const FrameNineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameNineBloc>(
      create: (context) => FrameNineBloc(FrameNineState(
        frameNineModelObj: FrameNineModel(),
      ))
        ..add(FrameNineInitialEvent()),
      child: FrameNineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameNineBloc, FrameNineState>(
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
                    imagePath: ImageConstant.img09MyContestRank,
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
