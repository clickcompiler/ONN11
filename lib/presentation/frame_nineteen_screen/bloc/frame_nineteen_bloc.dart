import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_nineteen_screen/models/frame_nineteen_model.dart';
part 'frame_nineteen_event.dart';
part 'frame_nineteen_state.dart';

/// A bloc that manages the state of a FrameNineteen according to the event that is dispatched to it.
class FrameNineteenBloc extends Bloc<FrameNineteenEvent, FrameNineteenState> {
  FrameNineteenBloc(FrameNineteenState initialState) : super(initialState) {
    on<FrameNineteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameNineteenInitialEvent event,
    Emitter<FrameNineteenState> emit,
  ) async {}
}
