// ignore_for_file: must_be_immutable

part of 'frame_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTenEvent extends Equatable {}

/// Event that is dispatched when the FrameTen widget is first created.
class FrameTenInitialEvent extends FrameTenEvent {
  @override
  List<Object?> get props => [];
}
