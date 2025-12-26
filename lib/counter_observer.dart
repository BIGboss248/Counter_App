import 'package:bloc/bloc.dart';
import 'package:counter_app/utils/logger.dart';

class CounterObserver extends BlocObserver {
  const CounterObserver();
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.i("${bloc.runtimeType} $change");
  }
}
