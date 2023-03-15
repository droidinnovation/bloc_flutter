import 'package:counter/counter/cubit/counter_cubit.dart';
import 'package:counter/counter/view/counter_view.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}
