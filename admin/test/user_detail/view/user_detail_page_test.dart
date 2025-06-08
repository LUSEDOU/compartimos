// ignore_for_file: prefer_const_constructors

import 'package:admin/user_detail/user_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserDetailPage', () {
    group('route', () {
      test('is routable', () {
        expect(UserDetailPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders UserDetailView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: UserDetailPage()));
      expect(find.byType(UserDetailView), findsOneWidget);
    });
  });
}
