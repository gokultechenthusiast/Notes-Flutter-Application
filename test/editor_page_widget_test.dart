import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:notes/modules/editor/controller/editor_page_controller.dart';
import 'package:notes/modules/editor/ui/editor_page.dart';

// there was some error in third party html editor saying a timer was not
// stopped needs lot of time to figure that so haven't wrote any test
void main() {
  testWidgets("On starting app", (WidgetTester tester) async {
    final editorPageController = Get.put(EditorPageController());

    await tester.pumpWidget(
      GetMaterialApp(
        home: EditorPage(),
      ),
    );

    expect(find.text("Make notes"), findsOneWidget);
  });
}
