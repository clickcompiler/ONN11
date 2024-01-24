import 'bloc/frame_seventeen_bloc.dart';
import 'models/frame_seventeen_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameSeventeenScreen extends StatelessWidget {
  const FrameSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSeventeenBloc>(
      create: (context) => FrameSeventeenBloc(FrameSeventeenState(
        frameSeventeenModelObj: FrameSeventeenModel(),
      ))
        ..add(FrameSeventeenInitialEvent()),
      child: FrameSeventeenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameSeventeenBloc, FrameSeventeenState>(
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
                    imagePath: ImageConstant.img17GuruTeam,
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
