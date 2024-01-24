import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_ten_screen/models/frame_ten_model.dart';
part 'frame_ten_event.dart';
part 'frame_ten_state.dart';

/// A bloc that manages the state of a FrameTen according to the event that is dispatched to it.
class FrameTenBloc extends Bloc<FrameTenEvent, FrameTenState> {
  FrameTenBloc(FrameTenState initialState) : super(initialState) {
    on<FrameTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTenInitialEvent event,
    Emitter<FrameTenState> emit,
  ) async {}
}
