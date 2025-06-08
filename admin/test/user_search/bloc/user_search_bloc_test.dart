// ignore_for_file: prefer_const_constructors

import 'package:admin/user_search/bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserSearchBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          UserSearchBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final userSearchBloc = UserSearchBloc();
      expect(userSearchBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<UserSearchBloc, UserSearchState>(
      'CustomUserSearchEvent emits nothing',
      build: UserSearchBloc.new,
      act: (bloc) => bloc.add(const CustomUserSearchEvent()),
      expect: () => <UserSearchState>[],
    );
  });
}
