// ignore_for_file: must_be_immutable

part of 'frame_nine_bloc.dart';

/// Represents the state of FrameNine in the application.
class FrameNineState extends Equatable {
  FrameNineState({this.frameNineModelObj});

  FrameNineModel? frameNineModelObj;

  @override
  List<Object?> get props => [
        frameNineModelObj,
      ];
  FrameNineState copyWith({FrameNineModel? frameNineModelObj}) {
    return FrameNineState(
      frameNineModelObj: frameNineModelObj ?? this.frameNineModelObj,
    );
  }
}
