// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:admin/user_search/bloc/bloc.dart';

void main() {
  group('UserSearchEvent', () {  
    group('CustomUserSearchEvent', () {
      test('supports value equality', () {
        expect(
          CustomUserSearchEvent(),
          equals(const CustomUserSearchEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomUserSearchEvent(),
          isNotNull
        );
      });
    });
  });
}
