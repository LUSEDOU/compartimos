// ignore_for_file: prefer_const_constructors

import 'package:admin/user_detail/bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserDetailBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          UserDetailBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final userDetailBloc = UserDetailBloc();
      expect(userDetailBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<UserDetailBloc, UserDetailState>(
      'CustomUserDetailEvent emits nothing',
      build: UserDetailBloc.new,
      act: (bloc) => bloc.add(const CustomUserDetailEvent()),
      expect: () => <UserDetailState>[],
    );
  });
}
