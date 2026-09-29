import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'details_widget.dart' show DetailsWidget;
import 'package:flutter/material.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  Local state fields for this page.

  bool editMode = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for editTitle widget.
  FocusNode? editTitleFocusNode;
  TextEditingController? editTitleTextController;
  String? Function(BuildContext, String?)? editTitleTextControllerValidator;
  // State field(s) for editDetails widget.
  FocusNode? editDetailsFocusNode;
  TextEditingController? editDetailsTextController;
  String? Function(BuildContext, String?)? editDetailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editTitleFocusNode?.dispose();
    editTitleTextController?.dispose();

    editDetailsFocusNode?.dispose();
    editDetailsTextController?.dispose();
  }
}
