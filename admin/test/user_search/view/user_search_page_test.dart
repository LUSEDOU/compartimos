// ignore_for_file: prefer_const_constructors

import 'package:admin/user_search/user_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserSearchPage', () {
    group('route', () {
      test('is routable', () {
        expect(UserSearchPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders UserSearchView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: UserSearchPage()));
      expect(find.byType(UserSearchView), findsOneWidget);
    });
  });
}
