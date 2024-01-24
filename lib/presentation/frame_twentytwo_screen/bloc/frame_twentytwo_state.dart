// ignore_for_file: must_be_immutable

part of 'frame_twentytwo_bloc.dart';

/// Represents the state of FrameTwentytwo in the application.
class FrameTwentytwoState extends Equatable {
  FrameTwentytwoState({this.frameTwentytwoModelObj});

  FrameTwentytwoModel? frameTwentytwoModelObj;

  @override
  List<Object?> get props => [
        frameTwentytwoModelObj,
      ];
  FrameTwentytwoState copyWith({FrameTwentytwoModel? frameTwentytwoModelObj}) {
    return FrameTwentytwoState(
      frameTwentytwoModelObj:
          frameTwentytwoModelObj ?? this.frameTwentytwoModelObj,
    );
  }
}
