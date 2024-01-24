// ignore_for_file: must_be_immutable

part of 'frame_nineteen_bloc.dart';

/// Represents the state of FrameNineteen in the application.
class FrameNineteenState extends Equatable {
  FrameNineteenState({this.frameNineteenModelObj});

  FrameNineteenModel? frameNineteenModelObj;

  @override
  List<Object?> get props => [
        frameNineteenModelObj,
      ];
  FrameNineteenState copyWith({FrameNineteenModel? frameNineteenModelObj}) {
    return FrameNineteenState(
      frameNineteenModelObj:
          frameNineteenModelObj ?? this.frameNineteenModelObj,
    );
  }
}
