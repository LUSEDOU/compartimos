// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:admin/auth/bloc/bloc.dart';

void main() {
  group('AuthEvent', () {  
    group('CustomAuthEvent', () {
      test('supports value equality', () {
        expect(
          CustomAuthEvent(),
          equals(const CustomAuthEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomAuthEvent(),
          isNotNull
        );
      });
    });
  });
}
