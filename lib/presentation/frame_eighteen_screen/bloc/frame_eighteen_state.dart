// ignore_for_file: must_be_immutable

part of 'frame_eighteen_bloc.dart';

/// Represents the state of FrameEighteen in the application.
class FrameEighteenState extends Equatable {
  FrameEighteenState({this.frameEighteenModelObj});

  FrameEighteenModel? frameEighteenModelObj;

  @override
  List<Object?> get props => [
        frameEighteenModelObj,
      ];
  FrameEighteenState copyWith({FrameEighteenModel? frameEighteenModelObj}) {
    return FrameEighteenState(
      frameEighteenModelObj:
          frameEighteenModelObj ?? this.frameEighteenModelObj,
    );
  }
}
