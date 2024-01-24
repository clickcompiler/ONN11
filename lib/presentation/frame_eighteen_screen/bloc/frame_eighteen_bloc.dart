import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_eighteen_screen/models/frame_eighteen_model.dart';
part 'frame_eighteen_event.dart';
part 'frame_eighteen_state.dart';

/// A bloc that manages the state of a FrameEighteen according to the event that is dispatched to it.
class FrameEighteenBloc extends Bloc<FrameEighteenEvent, FrameEighteenState> {
  FrameEighteenBloc(FrameEighteenState initialState) : super(initialState) {
    on<FrameEighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameEighteenInitialEvent event,
    Emitter<FrameEighteenState> emit,
  ) async {}
}
