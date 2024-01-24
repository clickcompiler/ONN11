// ignore_for_file: must_be_immutable

part of 'frame_twentyone_bloc.dart';

/// Represents the state of FrameTwentyone in the application.
class FrameTwentyoneState extends Equatable {
  FrameTwentyoneState({this.frameTwentyoneModelObj});

  FrameTwentyoneModel? frameTwentyoneModelObj;

  @override
  List<Object?> get props => [
        frameTwentyoneModelObj,
      ];
  FrameTwentyoneState copyWith({FrameTwentyoneModel? frameTwentyoneModelObj}) {
    return FrameTwentyoneState(
      frameTwentyoneModelObj:
          frameTwentyoneModelObj ?? this.frameTwentyoneModelObj,
    );
  }
}
