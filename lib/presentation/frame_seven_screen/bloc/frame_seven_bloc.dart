import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_seven_screen/models/frame_seven_model.dart';
part 'frame_seven_event.dart';
part 'frame_seven_state.dart';

/// A bloc that manages the state of a FrameSeven according to the event that is dispatched to it.
class FrameSevenBloc extends Bloc<FrameSevenEvent, FrameSevenState> {
  FrameSevenBloc(FrameSevenState initialState) : super(initialState) {
    on<FrameSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameSevenInitialEvent event,
    Emitter<FrameSevenState> emit,
  ) async {}
}
