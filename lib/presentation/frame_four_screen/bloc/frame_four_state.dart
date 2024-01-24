// ignore_for_file: must_be_immutable

part of 'frame_four_bloc.dart';

/// Represents the state of FrameFour in the application.
class FrameFourState extends Equatable {
  FrameFourState({this.frameFourModelObj});

  FrameFourModel? frameFourModelObj;

  @override
  List<Object?> get props => [
        frameFourModelObj,
      ];
  FrameFourState copyWith({FrameFourModel? frameFourModelObj}) {
    return FrameFourState(
      frameFourModelObj: frameFourModelObj ?? this.frameFourModelObj,
    );
  }
}
