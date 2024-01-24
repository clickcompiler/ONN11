import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_eleven_screen/models/frame_eleven_model.dart';
part 'frame_eleven_event.dart';
part 'frame_eleven_state.dart';

/// A bloc that manages the state of a FrameEleven according to the event that is dispatched to it.
class FrameElevenBloc extends Bloc<FrameElevenEvent, FrameElevenState> {
  FrameElevenBloc(FrameElevenState initialState) : super(initialState) {
    on<FrameElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameElevenInitialEvent event,
    Emitter<FrameElevenState> emit,
  ) async {}
}
