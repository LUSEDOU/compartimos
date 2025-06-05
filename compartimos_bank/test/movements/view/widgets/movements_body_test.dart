// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:compartimos_bank/movements/movements.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MovementsBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => MovementsBloc(),
          child: MaterialApp(home: MovementsBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
