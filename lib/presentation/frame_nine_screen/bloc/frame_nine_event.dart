// ignore_for_file: must_be_immutable

part of 'frame_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameNineEvent extends Equatable {}

/// Event that is dispatched when the FrameNine widget is first created.
class FrameNineInitialEvent extends FrameNineEvent {
  @override
  List<Object?> get props => [];
}
