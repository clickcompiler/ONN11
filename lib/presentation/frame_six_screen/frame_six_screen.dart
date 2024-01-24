import 'bloc/frame_six_bloc.dart';
import 'models/frame_six_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameSixScreen extends StatelessWidget {
  const FrameSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSixBloc>(
      create: (context) => FrameSixBloc(FrameSixState(
        frameSixModelObj: FrameSixModel(),
      ))
        ..add(FrameSixInitialEvent()),
      child: FrameSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameSixBloc, FrameSixState>(
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
                    imagePath: ImageConstant.img06ChoosePlayer,
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
