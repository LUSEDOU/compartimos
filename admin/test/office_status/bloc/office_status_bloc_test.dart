// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:admin/office_status/bloc/bloc.dart';

void main() {
  group('OfficeStatusBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          OfficeStatusBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final officeStatusBloc = OfficeStatusBloc();
      expect(officeStatusBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<OfficeStatusBloc, OfficeStatusState>(
      'CustomOfficeStatusEvent emits nothing',
      build: OfficeStatusBloc.new,
      act: (bloc) => bloc.add(const CustomOfficeStatusEvent()),
      expect: () => <OfficeStatusState>[],
    );
  });
}
