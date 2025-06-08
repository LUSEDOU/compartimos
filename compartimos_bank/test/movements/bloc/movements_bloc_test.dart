// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:compartimos_bank/movements/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MovementsBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          MovementsBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final movementsBloc = MovementsBloc();
      expect(movementsBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<MovementsBloc, MovementsState>(
      'CustomMovementsEvent emits nothing',
      build: MovementsBloc.new,
      act: (bloc) => bloc.add(const CustomMovementsEvent()),
      expect: () => <MovementsState>[],
    );
  });
}
