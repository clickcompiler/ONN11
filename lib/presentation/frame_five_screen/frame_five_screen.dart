import 'bloc/frame_five_bloc.dart';
import 'models/frame_five_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameFiveScreen extends StatelessWidget {
  const FrameFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFiveBloc>(
      create: (context) => FrameFiveBloc(FrameFiveState(
        frameFiveModelObj: FrameFiveModel(),
      ))
        ..add(FrameFiveInitialEvent()),
      child: FrameFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameFiveBloc, FrameFiveState>(
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
                    imagePath: ImageConstant.img05Contests,
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
