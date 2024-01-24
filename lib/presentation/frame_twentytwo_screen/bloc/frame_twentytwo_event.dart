// ignore_for_file: must_be_immutable

part of 'frame_twentytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwentytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwentytwoEvent extends Equatable {}

/// Event that is dispatched when the FrameTwentytwo widget is first created.
class FrameTwentytwoInitialEvent extends FrameTwentytwoEvent {
  @override
  List<Object?> get props => [];
}
