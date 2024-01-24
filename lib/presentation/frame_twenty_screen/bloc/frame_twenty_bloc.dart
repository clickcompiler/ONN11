import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_twenty_screen/models/frame_twenty_model.dart';
part 'frame_twenty_event.dart';
part 'frame_twenty_state.dart';

/// A bloc that manages the state of a FrameTwenty according to the event that is dispatched to it.
class FrameTwentyBloc extends Bloc<FrameTwentyEvent, FrameTwentyState> {
  FrameTwentyBloc(FrameTwentyState initialState) : super(initialState) {
    on<FrameTwentyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentyInitialEvent event,
    Emitter<FrameTwentyState> emit,
  ) async {}
}
