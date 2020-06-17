import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BaseEvent extends Equatable {
  @override
  List<Object> get props => [];
}
