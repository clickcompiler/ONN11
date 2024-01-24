import 'bloc/frame_one_bloc.dart';
import 'models/frame_one_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameOneScreen extends StatelessWidget {
  const FrameOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameOneBloc>(
        create: (context) =>
            FrameOneBloc(FrameOneState(frameOneModelObj: FrameOneModel()))
              ..add(FrameOneInitialEvent()),
        child: FrameOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameOneBloc, FrameOneState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 946.v,
                  width: 448.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                            child: SizedBox(height: 946.v, width: 448.h))),
                    CustomImageView(
                        imagePath: ImageConstant.img01Splash,
                        height: 926.v,
                        width: 428.h,
                        alignment: Alignment.center)
                  ]))));
    });
  }
}
