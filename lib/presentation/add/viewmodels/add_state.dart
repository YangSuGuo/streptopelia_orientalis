import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/project.dart';

part 'add_state.freezed.dart';

@freezed
abstract class AddState with _$AddState {
  const factory AddState({
    Project? project,
    @Default(false) bool isSubmitting,
    String? errorMessage,
    @Default(false) bool submitSuccess,
  }) = _AddState;
}
