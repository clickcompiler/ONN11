import 'bloc/frame_four_bloc.dart';
import 'models/frame_four_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameFourScreen extends StatelessWidget {
  const FrameFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourBloc>(
      create: (context) => FrameFourBloc(FrameFourState(
        frameFourModelObj: FrameFourModel(),
      ))
        ..add(FrameFourInitialEvent()),
      child: FrameFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameFourBloc, FrameFourState>(
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
                    imagePath: ImageConstant.img04Dashboerd,
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
