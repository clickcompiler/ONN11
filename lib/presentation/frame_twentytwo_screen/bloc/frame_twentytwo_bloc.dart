import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_twentytwo_screen/models/frame_twentytwo_model.dart';
part 'frame_twentytwo_event.dart';
part 'frame_twentytwo_state.dart';

/// A bloc that manages the state of a FrameTwentytwo according to the event that is dispatched to it.
class FrameTwentytwoBloc
    extends Bloc<FrameTwentytwoEvent, FrameTwentytwoState> {
  FrameTwentytwoBloc(FrameTwentytwoState initialState) : super(initialState) {
    on<FrameTwentytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentytwoInitialEvent event,
    Emitter<FrameTwentytwoState> emit,
  ) async {}
}
