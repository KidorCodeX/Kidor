import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_first_app/main.dart';

void main() {
  testWidgets('Your Test Name', (WidgetTester tester) async {
    // Build your app and trigger a frame.
    await tester.pumpWidget(const Myapp());

    // Add your test logic here
    // For example:
    // - Verify the initial state of your widgets
    // - Perform interactions with your widgets
    // - Verify the final state of your widgets

    // Example:
    // Verify that a specific widget is present
    // expect(find.text('Hello'), findsOneWidget);

    // Example:
    // Perform a tap on a widget
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // Example:
    // Verify the updated state after the interaction
    // expect(find.text('Hello'), findsNothing);
    // expect(find.text('World'), findsOneWidget);
  });
}
