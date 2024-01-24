// ignore_for_file: must_be_immutable

part of 'frame_twentyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentyoneEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentyone widget is first created.
class FrameTwentyoneInitialEvent extends FrameTwentyoneEvent {
  @override
  List<Object?> get props => [];
}
