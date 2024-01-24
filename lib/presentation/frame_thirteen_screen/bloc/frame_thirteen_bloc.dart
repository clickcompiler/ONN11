import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_thirteen_screen/models/frame_thirteen_model.dart';
part 'frame_thirteen_event.dart';
part 'frame_thirteen_state.dart';

/// A bloc that manages the state of a FrameThirteen according to the event that is dispatched to it.
class FrameThirteenBloc extends Bloc<FrameThirteenEvent, FrameThirteenState> {
  FrameThirteenBloc(FrameThirteenState initialState) : super(initialState) {
    on<FrameThirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirteenInitialEvent event,
    Emitter<FrameThirteenState> emit,
  ) async {}
}
