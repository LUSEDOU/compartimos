// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:admin/user_search/user_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserSearchBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => UserSearchBloc(),
          child: MaterialApp(home: UserSearchBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
