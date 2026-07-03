import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_group_state.freezed.dart';

@freezed
abstract class AddEventGroupState with _$AddEventGroupState {
  const factory AddEventGroupState({
    @Default('') String title,
    String? icon,
    Color? selectedColor,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _AddEventGroupState;
}
