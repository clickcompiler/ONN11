import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_four_screen/models/frame_four_model.dart';
part 'frame_four_event.dart';
part 'frame_four_state.dart';

/// A bloc that manages the state of a FrameFour according to the event that is dispatched to it.
class FrameFourBloc extends Bloc<FrameFourEvent, FrameFourState> {
  FrameFourBloc(FrameFourState initialState) : super(initialState) {
    on<FrameFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFourInitialEvent event,
    Emitter<FrameFourState> emit,
  ) async {}
}
