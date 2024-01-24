import 'bloc/frame_nineteen_bloc.dart';
import 'models/frame_nineteen_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameNineteenScreen extends StatelessWidget {
  const FrameNineteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameNineteenBloc>(
      create: (context) => FrameNineteenBloc(FrameNineteenState(
        frameNineteenModelObj: FrameNineteenModel(),
      ))
        ..add(FrameNineteenInitialEvent()),
      child: FrameNineteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameNineteenBloc, FrameNineteenState>(
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
                    imagePath: ImageConstant.img19Profile,
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
