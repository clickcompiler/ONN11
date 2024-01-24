// ignore_for_file: must_be_immutable

part of 'frame_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameSevenEvent extends Equatable {}

/// Event that is dispatched when the FrameSeven widget is first created.
class FrameSevenInitialEvent extends FrameSevenEvent {
  @override
  List<Object?> get props => [];
}
