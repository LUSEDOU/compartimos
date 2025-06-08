// ignore_for_file: prefer_const_constructors

import 'package:compartimos_bank/movements/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MovementsState', () {
    test('supports value equality', () {
      expect(
        MovementsState(),
        equals(
          const MovementsState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const MovementsState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const movementsState = MovementsState(
            customProperty: 'My property',
          );
          expect(
            movementsState.copyWith(),
            equals(movementsState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const movementsState = MovementsState(
            customProperty: 'My property',
          );
          final otherMovementsState = MovementsState(
            customProperty: 'My property 2',
          );
          expect(movementsState, isNot(equals(otherMovementsState)));

          expect(
            movementsState.copyWith(
              customProperty: otherMovementsState.customProperty,
            ),
            equals(otherMovementsState),
          );
        },
      );
    });
  });
}
