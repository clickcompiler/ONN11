import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_fifteen_screen/models/frame_fifteen_model.dart';
part 'frame_fifteen_event.dart';
part 'frame_fifteen_state.dart';

/// A bloc that manages the state of a FrameFifteen according to the event that is dispatched to it.
class FrameFifteenBloc extends Bloc<FrameFifteenEvent, FrameFifteenState> {
  FrameFifteenBloc(FrameFifteenState initialState) : super(initialState) {
    on<FrameFifteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFifteenInitialEvent event,
    Emitter<FrameFifteenState> emit,
  ) async {}
}
