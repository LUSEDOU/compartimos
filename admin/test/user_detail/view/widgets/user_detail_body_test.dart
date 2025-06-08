// ignore_for_file: prefer_const_constructors

import 'package:admin/user_detail/user_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserDetailBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => UserDetailBloc(),
          child: MaterialApp(home: UserDetailBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
