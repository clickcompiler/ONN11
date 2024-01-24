// ignore_for_file: must_be_immutable

part of 'frame_thirteen_bloc.dart';

/// Represents the state of FrameThirteen in the application.
class FrameThirteenState extends Equatable {
  FrameThirteenState({this.frameThirteenModelObj});

  FrameThirteenModel? frameThirteenModelObj;

  @override
  List<Object?> get props => [
        frameThirteenModelObj,
      ];
  FrameThirteenState copyWith({FrameThirteenModel? frameThirteenModelObj}) {
    return FrameThirteenState(
      frameThirteenModelObj:
          frameThirteenModelObj ?? this.frameThirteenModelObj,
    );
  }
}
