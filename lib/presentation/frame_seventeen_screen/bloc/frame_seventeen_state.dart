// ignore_for_file: must_be_immutable

part of 'frame_seventeen_bloc.dart';

/// Represents the state of FrameSeventeen in the application.
class FrameSeventeenState extends Equatable {
  FrameSeventeenState({this.frameSeventeenModelObj});

  FrameSeventeenModel? frameSeventeenModelObj;

  @override
  List<Object?> get props => [
        frameSeventeenModelObj,
      ];
  FrameSeventeenState copyWith({FrameSeventeenModel? frameSeventeenModelObj}) {
    return FrameSeventeenState(
      frameSeventeenModelObj:
          frameSeventeenModelObj ?? this.frameSeventeenModelObj,
    );
  }
}
