import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart'; // Se estiver usando Provider
import 'package:rb_share/pages/tabs/receive_tab.dart';
import 'package:rb_share/pages/tabs/receive_tab_vm.dart';

void main() {
  //by Type
  testWidgets('Testing receive tab (type)', (WidgetTester tester) async {
    await tester.pumpWidget(
     const MaterialApp(
        home: Scaffold(
          body: ReceiveTab(),
        ),
      ),
    );

    // Verifica se existe um TextButton
    expect(find.byType(TextButton), findsOneWidget);
    
    // Tenta tocar no TextButton
    await tester.tap(find.byType(TextButton));
    await tester.pump();
  });

  //by key
  testWidgets('Testing receive tab (key)', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ReceiveTab(),
        ),
      ),
    );

    // Verifica se o botão com a key 'botao' está presente
    expect(find.byKey(const ValueKey('botao')), findsOneWidget);
    
    // Tenta tocar no botão
    await tester.tap(find.byKey(const ValueKey('botao')));
    await tester.pump();
  });

  //by text
  testWidgets('Testing receive tab (text)', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ReceiveTab(),
        ),
      ),
    );

    // Verifica se existe um widget com o texto 'quicksave'
    expect(find.text('quicksave'), findsOneWidget);
    
    // Tenta tocar no widget de texto
    await tester.tap(find.text('quicksave'));
    await tester.pump();
  });
}