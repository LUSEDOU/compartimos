// ignore_for_file: prefer_const_constructors

import 'package:admin/user_register/user_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserRegisterPage', () {
    group('route', () {
      test('is routable', () {
        expect(UserRegisterPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders UserRegisterView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: UserRegisterPage()));
      expect(find.byType(UserRegisterView), findsOneWidget);
    });
  });
}
