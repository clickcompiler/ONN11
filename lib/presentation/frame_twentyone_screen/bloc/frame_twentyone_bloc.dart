import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onn_11/presentation/frame_twentyone_screen/models/frame_twentyone_model.dart';
part 'frame_twentyone_event.dart';
part 'frame_twentyone_state.dart';

/// A bloc that manages the state of a FrameTwentyone according to the event that is dispatched to it.
class FrameTwentyoneBloc
    extends Bloc<FrameTwentyoneEvent, FrameTwentyoneState> {
  FrameTwentyoneBloc(FrameTwentyoneState initialState) : super(initialState) {
    on<FrameTwentyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameTwentyoneInitialEvent event,
    Emitter<FrameTwentyoneState> emit,
  ) async {}
}
