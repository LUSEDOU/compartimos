// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:admin/user_search/bloc/bloc.dart';

void main() {
  group('UserSearchState', () {
    test('supports value equality', () {
      expect(
        UserSearchState(),
        equals(
          const UserSearchState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const UserSearchState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const userSearchState = UserSearchState(
            customProperty: 'My property',
          );
          expect(
            userSearchState.copyWith(),
            equals(userSearchState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const userSearchState = UserSearchState(
            customProperty: 'My property',
          );
          final otherUserSearchState = UserSearchState(
            customProperty: 'My property 2',
          );
          expect(userSearchState, isNot(equals(otherUserSearchState)));

          expect(
            userSearchState.copyWith(
              customProperty: otherUserSearchState.customProperty,
            ),
            equals(otherUserSearchState),
          );
        },
      );
    });
  });
}
