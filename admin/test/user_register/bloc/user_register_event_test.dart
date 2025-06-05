// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:admin/user_register/bloc/bloc.dart';

void main() {
  group('UserRegisterEvent', () {  
    group('CustomUserRegisterEvent', () {
      test('supports value equality', () {
        expect(
          CustomUserRegisterEvent(),
          equals(const CustomUserRegisterEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomUserRegisterEvent(),
          isNotNull
        );
      });
    });
  });
}
