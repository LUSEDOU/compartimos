// ignore_for_file: prefer_const_constructors

import 'package:admin/office_status/office_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OfficeStatusBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => OfficeStatusBloc(),
          child: MaterialApp(home: OfficeStatusBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
