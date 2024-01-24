// ignore_for_file: must_be_immutable

part of 'frame_fifteen_bloc.dart';

/// Represents the state of FrameFifteen in the application.
class FrameFifteenState extends Equatable {
  FrameFifteenState({this.frameFifteenModelObj});

  FrameFifteenModel? frameFifteenModelObj;

  @override
  List<Object?> get props => [
        frameFifteenModelObj,
      ];
  FrameFifteenState copyWith({FrameFifteenModel? frameFifteenModelObj}) {
    return FrameFifteenState(
      frameFifteenModelObj: frameFifteenModelObj ?? this.frameFifteenModelObj,
    );
  }
}
