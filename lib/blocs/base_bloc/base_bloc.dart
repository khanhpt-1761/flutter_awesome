import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  @override
  BaseState get initialState => InitState();

  @override
  Stream<BaseState> mapEventToState(
    BaseEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
