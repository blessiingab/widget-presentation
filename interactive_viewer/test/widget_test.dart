import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:interactive_viewer/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify that the app bar title is displayed.
    expect(find.text('InteractiveViewer Demo'), findsOneWidget);

    // Verify the InteractiveViewer widget exists.
    expect(find.byType(InteractiveViewer), findsOneWidget);
  });
}