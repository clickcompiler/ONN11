import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_eight_screen/models/frame_eight_model.dart';
part 'frame_eight_event.dart';
part 'frame_eight_state.dart';

/// A bloc that manages the state of a FrameEight according to the event that is dispatched to it.
class FrameEightBloc extends Bloc<FrameEightEvent, FrameEightState> {
  FrameEightBloc(FrameEightState initialState) : super(initialState) {
    on<FrameEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameEightInitialEvent event,
    Emitter<FrameEightState> emit,
  ) async {}
}
