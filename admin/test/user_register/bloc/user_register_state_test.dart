// ignore_for_file: prefer_const_constructors

import 'package:admin/user_register/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserRegisterState', () {
    test('supports value equality', () {
      expect(
        UserRegisterState(),
        equals(
          const UserRegisterState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const UserRegisterState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const userRegisterState = UserRegisterState(
            customProperty: 'My property',
          );
          expect(
            userRegisterState.copyWith(),
            equals(userRegisterState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const userRegisterState = UserRegisterState(
            customProperty: 'My property',
          );
          final otherUserRegisterState = UserRegisterState(
            customProperty: 'My property 2',
          );
          expect(userRegisterState, isNot(equals(otherUserRegisterState)));

          expect(
            userRegisterState.copyWith(
              customProperty: otherUserRegisterState.customProperty,
            ),
            equals(otherUserRegisterState),
          );
        },
      );
    });
  });
}
