import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wechat/widgets/ChatAppBar.dart';

void main(){
  const MaterialApp app = MaterialApp(
    home: Scaffold(
        body:  const ChatAppBar()
    ),
  );
  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.text('Jukka Koivu'), findsOneWidget);
    expect(find.text('@jukkakoivu'), findsOneWidget);
    expect(find.byType(IconButton),findsNWidgets(1));
    expect(find.byType(CircleAvatar),findsOneWidget);
  });
}