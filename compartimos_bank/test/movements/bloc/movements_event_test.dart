// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:compartimos_bank/movements/bloc/bloc.dart';

void main() {
  group('MovementsEvent', () {  
    group('CustomMovementsEvent', () {
      test('supports value equality', () {
        expect(
          CustomMovementsEvent(),
          equals(const CustomMovementsEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomMovementsEvent(),
          isNotNull,
        );
      });
    });
  });
}
