// ignore_for_file: prefer_const_constructors

import 'package:admin/user_register/bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserRegisterBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          UserRegisterBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final userRegisterBloc = UserRegisterBloc();
      expect(userRegisterBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<UserRegisterBloc, UserRegisterState>(
      'CustomUserRegisterEvent emits nothing',
      build: UserRegisterBloc.new,
      act: (bloc) => bloc.add(const CustomUserRegisterEvent()),
      expect: () => <UserRegisterState>[],
    );
  });
}
