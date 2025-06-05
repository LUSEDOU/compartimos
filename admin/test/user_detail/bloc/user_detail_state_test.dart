// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:admin/user_detail/bloc/bloc.dart';

void main() {
  group('UserDetailState', () {
    test('supports value equality', () {
      expect(
        UserDetailState(),
        equals(
          const UserDetailState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const UserDetailState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const userDetailState = UserDetailState(
            customProperty: 'My property',
          );
          expect(
            userDetailState.copyWith(),
            equals(userDetailState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const userDetailState = UserDetailState(
            customProperty: 'My property',
          );
          final otherUserDetailState = UserDetailState(
            customProperty: 'My property 2',
          );
          expect(userDetailState, isNot(equals(otherUserDetailState)));

          expect(
            userDetailState.copyWith(
              customProperty: otherUserDetailState.customProperty,
            ),
            equals(otherUserDetailState),
          );
        },
      );
    });
  });
}
