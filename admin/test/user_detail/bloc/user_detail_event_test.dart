// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:admin/user_detail/bloc/bloc.dart';

void main() {
  group('UserDetailEvent', () {  
    group('CustomUserDetailEvent', () {
      test('supports value equality', () {
        expect(
          CustomUserDetailEvent(),
          equals(const CustomUserDetailEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomUserDetailEvent(),
          isNotNull,
        );
      });
    });
  });
}
