// ignore_for_file: must_be_immutable

part of 'frame_twenty_bloc.dart';

/// Represents the state of FrameTwenty in the application.
class FrameTwentyState extends Equatable {
  FrameTwentyState({this.frameTwentyModelObj});

  FrameTwentyModel? frameTwentyModelObj;

  @override
  List<Object?> get props => [
        frameTwentyModelObj,
      ];
  FrameTwentyState copyWith({FrameTwentyModel? frameTwentyModelObj}) {
    return FrameTwentyState(
      frameTwentyModelObj: frameTwentyModelObj ?? this.frameTwentyModelObj,
    );
  }
}
