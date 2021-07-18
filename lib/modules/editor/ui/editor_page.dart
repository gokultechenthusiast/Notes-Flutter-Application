import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:notes/core/controllers/shared_preference_controller.dart';
import 'package:notes/modules/editor/controller/editor_page_controller.dart';

class EditorPage extends StatelessWidget {
  const EditorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<EditorPageController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Make notes"),
        actions: [
          TextButton(
            onPressed: () {
              debugPrint("Entered value clear");
              // clear all data in note and storage
              controller.htmlEditorController.clear();
              Get.find<SharedPreferenceController>().clearAll();
            },
            child: Text(
              "Clear "
              "all",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: HtmlEditor(
        key: Key("htmlEditor"),
        controller: controller.htmlEditorController,
        htmlEditorOptions: HtmlEditorOptions(
          hint: "Please enter the notes",
        ),
        htmlToolbarOptions:
            HtmlToolbarOptions(toolbarType: ToolbarType.nativeGrid),
        callbacks: Callbacks(
          onChangeContent: (value) {
            // when the value changes its saved to storage
            debugPrint("Value in editor :- $value");
            // when there is no value in editor the below value is returned
            if (value != "<p><br></p>") {
              controller.notes = value;
            }
          },
        ),
      ),
    );
  }
}
