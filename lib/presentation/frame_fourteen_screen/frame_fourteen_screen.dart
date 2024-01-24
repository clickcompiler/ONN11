import 'bloc/frame_fourteen_bloc.dart';
import 'models/frame_fourteen_model.dart';
import 'package:flutter/material.dart';
import 'package:onn_11/core/app_export.dart';

class FrameFourteenScreen extends StatelessWidget {
  const FrameFourteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourteenBloc>(
      create: (context) => FrameFourteenBloc(FrameFourteenState(
        frameFourteenModelObj: FrameFourteenModel(),
      ))
        ..add(FrameFourteenInitialEvent()),
      child: FrameFourteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameFourteenBloc, FrameFourteenState>(
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
                    imagePath: ImageConstant.img14SideMenu,
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
