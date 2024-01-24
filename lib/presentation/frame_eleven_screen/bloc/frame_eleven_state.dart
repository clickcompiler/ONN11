// ignore_for_file: must_be_immutable

part of 'frame_eleven_bloc.dart';

/// Represents the state of FrameEleven in the application.
class FrameElevenState extends Equatable {
  FrameElevenState({this.frameElevenModelObj});

  FrameElevenModel? frameElevenModelObj;

  @override
  List<Object?> get props => [
        frameElevenModelObj,
      ];
  FrameElevenState copyWith({FrameElevenModel? frameElevenModelObj}) {
    return FrameElevenState(
      frameElevenModelObj: frameElevenModelObj ?? this.frameElevenModelObj,
    );
  }
}
