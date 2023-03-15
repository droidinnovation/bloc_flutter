import 'package:bloc/bloc.dart';

/// [BlocObserver] for the counter application which
/// observes all state changes.
class CounterObserver extends BlocObserver {
  const CounterObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} change: $change');
  }
}
