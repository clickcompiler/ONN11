import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_fourteen_screen/models/frame_fourteen_model.dart';
part 'frame_fourteen_event.dart';
part 'frame_fourteen_state.dart';

/// A bloc that manages the state of a FrameFourteen according to the event that is dispatched to it.
class FrameFourteenBloc extends Bloc<FrameFourteenEvent, FrameFourteenState> {
  FrameFourteenBloc(FrameFourteenState initialState) : super(initialState) {
    on<FrameFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFourteenInitialEvent event,
    Emitter<FrameFourteenState> emit,
  ) async {}
}
