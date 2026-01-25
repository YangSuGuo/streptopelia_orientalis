// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfigRepository)
final configRepositoryProvider = ConfigRepositoryProvider._();

final class ConfigRepositoryProvider
    extends $NotifierProvider<ConfigRepository, ConfigState> {
  ConfigRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configRepositoryHash();

  @$internal
  @override
  ConfigRepository create() => ConfigRepository();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfigState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfigState>(value),
    );
  }
}

String _$configRepositoryHash() => r'81c202f722c13c15429c2164d6cc959c65de5ec2';

abstract class _$ConfigRepository extends $Notifier<ConfigState> {
  ConfigState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ConfigState, ConfigState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ConfigState, ConfigState>,
              ConfigState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
