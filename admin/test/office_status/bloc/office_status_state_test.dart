// ignore_for_file: prefer_const_constructors

import 'package:admin/office_status/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OfficeStatusState', () {
    test('supports value equality', () {
      expect(
        OfficeStatusState(),
        equals(
          const OfficeStatusState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const OfficeStatusState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const officeStatusState = OfficeStatusState(
            customProperty: 'My property',
          );
          expect(
            officeStatusState.copyWith(),
            equals(officeStatusState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const officeStatusState = OfficeStatusState(
            customProperty: 'My property',
          );
          final otherOfficeStatusState = OfficeStatusState(
            customProperty: 'My property 2',
          );
          expect(officeStatusState, isNot(equals(otherOfficeStatusState)));

          expect(
            officeStatusState.copyWith(
              customProperty: otherOfficeStatusState.customProperty,
            ),
            equals(otherOfficeStatusState),
          );
        },
      );
    });
  });
}
