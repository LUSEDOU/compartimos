// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:admin/office_status/bloc/bloc.dart';

void main() {
  group('OfficeStatusEvent', () {  
    group('CustomOfficeStatusEvent', () {
      test('supports value equality', () {
        expect(
          CustomOfficeStatusEvent(),
          equals(const CustomOfficeStatusEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomOfficeStatusEvent(),
          isNotNull,
        );
      });
    });
  });
}
