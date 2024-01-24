import 'bloc/frame_twenty_bloc.dart';
import 'models/frame_twenty_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameTwentyScreen extends StatelessWidget {
  const FrameTwentyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentyBloc>(
      create: (context) => FrameTwentyBloc(FrameTwentyState(
        frameTwentyModelObj: FrameTwentyModel(),
      ))
        ..add(FrameTwentyInitialEvent()),
      child: FrameTwentyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameTwentyBloc, FrameTwentyState>(
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
                    imagePath: ImageConstant.img20FindGuru,
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
