import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:notes/core/constants/shared_preference_constants.dart';
import 'package:notes/core/controllers/shared_preference_controller.dart';

class EditorPageController extends GetxController {
  // this is the reactive variable which stores the note
  final _notes = ''.obs;
  set notes(value) => _notes.value = value;
  get notes => _notes.value;

  HtmlEditorController htmlEditorController = HtmlEditorController();
  @override
  Future<void> onReady() async {
    // TODO: implement onReady
    super.onReady();
    final sharedPreferenceController = Get.find<SharedPreferenceController>();

    // here the previous note is fetched from shared preference n added
    htmlEditorController.insertHtml(await sharedPreferenceController
        .readValue(SharedPreferenceKeys.notesKey));

    // here note is stored in shared preference
    ever(_notes, (value) {
      // when ever a value changes in note variable will enter here
      if (value != "") {
        debugPrint("Value of note changed");
        sharedPreferenceController.writeValue(
            SharedPreferenceKeys.notesKey, value);
        // online feature can be integrated here
        //using a bool isOnline when its true the notes can be saved in
        // server via api.
      }
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
