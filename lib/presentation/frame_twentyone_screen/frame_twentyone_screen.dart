import 'bloc/frame_twentyone_bloc.dart';
import 'models/frame_twentyone_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameTwentyoneScreen extends StatelessWidget {
  const FrameTwentyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentyoneBloc>(
      create: (context) => FrameTwentyoneBloc(FrameTwentyoneState(
        frameTwentyoneModelObj: FrameTwentyoneModel(),
      ))
        ..add(FrameTwentyoneInitialEvent()),
      child: FrameTwentyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameTwentyoneBloc, FrameTwentyoneState>(
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
                    imagePath: ImageConstant.img21Profile,
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
