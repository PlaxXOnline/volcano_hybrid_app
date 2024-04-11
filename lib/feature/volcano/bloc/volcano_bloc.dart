import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'volcano_event.dart';
part 'volcano_state.dart';

class VolcanoBloc extends Bloc<VolcanoEvent, VolcanoState> {
  VolcanoBloc() : super(VolcanoInitial()) {
    on<VolcanoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
