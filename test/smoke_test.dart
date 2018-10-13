import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_demo/main.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
  final app = MyApp();
  await tester.pumpWidget(app);
  expect(find.text("0"), findsOneWidget);
  await tester.tap(find.byIcon(Icons.add));
  await tester.pump();
  expect(find.text("1"), findsOneWidget);
  });
}


