// ignore_for_file: must_be_immutable

part of 'frame_ten_bloc.dart';

/// Represents the state of FrameTen in the application.
class FrameTenState extends Equatable {
  FrameTenState({this.frameTenModelObj});

  FrameTenModel? frameTenModelObj;

  @override
  List<Object?> get props => [
        frameTenModelObj,
      ];
  FrameTenState copyWith({FrameTenModel? frameTenModelObj}) {
    return FrameTenState(
      frameTenModelObj: frameTenModelObj ?? this.frameTenModelObj,
    );
  }
}
