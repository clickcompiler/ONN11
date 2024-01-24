import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_two_screen/models/frame_two_model.dart';
part 'frame_two_event.dart';
part 'frame_two_state.dart';

/// A bloc that manages the state of a FrameTwo according to the event that is dispatched to it.
class FrameTwoBloc extends Bloc<FrameTwoEvent, FrameTwoState> {
  FrameTwoBloc(FrameTwoState initialState) : super(initialState) {
    on<FrameTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwoInitialEvent event,
    Emitter<FrameTwoState> emit,
  ) async {}
}
