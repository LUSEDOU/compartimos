// ignore_for_file: prefer_const_constructors

import 'package:admin/office_status/office_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OfficeStatusPage', () {
    group('route', () {
      test('is routable', () {
        expect(OfficeStatusPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders OfficeStatusView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: OfficeStatusPage()));
      expect(find.byType(OfficeStatusView), findsOneWidget);
    });
  });
}
