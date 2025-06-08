// ignore_for_file: prefer_const_constructors

import 'package:compartimos_bank/movements/movements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MovementsPage', () {
    group('route', () {
      test('is routable', () {
        expect(MovementsPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders MovementsView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: MovementsPage()));
      expect(find.byType(MovementsView), findsOneWidget);
    });
  });
}
