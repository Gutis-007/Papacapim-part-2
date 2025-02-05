
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:papacapim/main.dart';
import 'package:provider/provider.dart';
import 'package:papacapim/providers/auth_provider.dart';

void main() {
  testWidgets('App should render without crashing', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AuthProvider(),
        child: const MyApp(),
      ),
    );

    // Verifica se o app renderiza sem erros
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
