import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_nine_screen/models/frame_nine_model.dart';
part 'frame_nine_event.dart';
part 'frame_nine_state.dart';

/// A bloc that manages the state of a FrameNine according to the event that is dispatched to it.
class FrameNineBloc extends Bloc<FrameNineEvent, FrameNineState> {
  FrameNineBloc(FrameNineState initialState) : super(initialState) {
    on<FrameNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameNineInitialEvent event,
    Emitter<FrameNineState> emit,
  ) async {}
}
