import 'package:bloc_test/bloc_test.dart';
import 'package:counter/counter/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    test('initial state is 0', () {
      expect(CounterCubit().state, 0);
    });

    group('increment', () {
      blocTest<CounterCubit, int>(
        'CounterCubit emit [1] when state is 0',
        build: CounterCubit.new,
        act: (cubit) => cubit.increment(),
        expect: () => [1],
      );
      blocTest<CounterCubit, int>(
        'CounterCubit emit [1,2] when state is 0 and invoked twice',
        build: CounterCubit.new,
        act: (cubit) => cubit
          ..increment()
          ..increment(),
        expect: () => <int>[1, 2],
      );
      blocTest<CounterCubit, int>(
        'CounterCubit emits[100] when state is 99',
        build: CounterCubit.new,
        seed: () => 99,
        act: (bloc) => bloc.increment(),
        expect: () => <int>[100],
      );
    });

    group('decrement', () {
      blocTest(
        'emit [-1] when state is 0',
        build: CounterCubit.new,
        act: (bloc) => bloc.decrement(),
        expect: () => <int>[-1],
      );
      blocTest(
        'emits [-1,-2] when state is 0 and invoke twice',
        build: CounterCubit.new,
        act: (bloc) => bloc
          ..decrement()
          ..decrement(),
        expect: () => <int>[-1, -2],
      );

      blocTest(
        'emit [77] when state is 78',
        build: CounterCubit.new,
        seed: () => 78,
        act: (bloc) => bloc.decrement(),
        expect: () => <int>[77],
      );
    });
  });
}
