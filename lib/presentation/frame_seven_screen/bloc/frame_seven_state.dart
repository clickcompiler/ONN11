// ignore_for_file: must_be_immutable

part of 'frame_seven_bloc.dart';

/// Represents the state of FrameSeven in the application.
class FrameSevenState extends Equatable {
  FrameSevenState({this.frameSevenModelObj});

  FrameSevenModel? frameSevenModelObj;

  @override
  List<Object?> get props => [
        frameSevenModelObj,
      ];
  FrameSevenState copyWith({FrameSevenModel? frameSevenModelObj}) {
    return FrameSevenState(
      frameSevenModelObj: frameSevenModelObj ?? this.frameSevenModelObj,
    );
  }
}
