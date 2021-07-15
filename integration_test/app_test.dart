import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:interactive_list/main.dart' as app;
import 'package:interactive_list/main.dart';
import 'package:interactive_list/static_height_scrollable/static_height_list_widget.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("My First test", (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(Key("option_item_1")));
    await tester.pumpAndSettle();
    await tester.pumpWidget(
      StaticHeightListWidget(
        title: 'Static Height widget',
      ),
    );
    expect(find.byType(StaticHeightListWidget), findsOneWidget);
    expect(find.byType(HomeMenu), findsNothing);
    print("Will Execute Test");
    await Future.delayed(Duration(seconds: 20));
    await tester.tap(find.byKey(Key("btn_next")));
    expect(find.byType(StaticHeightListWidget), findsOneWidget);
  });

  // testWidgets(
  //   '''when clicking on next button, next image should be visible''',
  //   (WidgetTester tester) async {
  //     await tester.pumpWidget(
  //       StaticHeightListWidget(
  //         title: 'Static Height widget',
  //       ),
  //     );
  //     await tester.pumpWidget(StaticHeightListWidget());
  //     await tester.tap(find.byType(FloatingActionButton));
  //     await tester.pumpAndSettle();
  //
  //     expect(find.byType(StaticHeightListWidget), findsOneWidget);
  //     expect(find.byType(HomeMenu), findsNothing);
  //   },
  // );
}

// void main() {
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
//
//   testWidgets(
//     '''when clicking on static widget button, should go to a new page''',
//     (WidgetTester tester) async {
//       await tester.pumpWidget(MyApp());
//
//       await tester.tap(find.byKey(ValueKey("option_item_1")));
//       await tester.pumpAndSettle();
//
//       expect(find.byType(StaticHeightListWidget), findsOneWidget);
//       expect(find.byType(HomeMenu), findsNothing);
//     },
//   );
//
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
//
//   testWidgets(
//     '''when clicking on next button, next image should be visible''',
//     (WidgetTester tester) async {
//       await tester.pumpWidget(
//         StaticHeightListWidget(
//           title: 'Static Height widget',
//         ),
//       );
//
//       await tester.tap(find.byKey(ValueKey("btn_next")));
//       await tester.pumpAndSettle();
//
//       expect(find.byType(StaticHeightListWidget), findsOneWidget);
//       expect(find.byType(HomeMenu), findsNothing);
//     },
//   );
// }
