// ignore_for_file: prefer_const_constructors

import 'package:admin/user_register/user_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserRegisterBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => UserRegisterBloc(),
          child: MaterialApp(home: UserRegisterBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
