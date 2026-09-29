import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for SU-Email widget.
  FocusNode? sUEmailFocusNode;
  TextEditingController? sUEmailTextController;
  String? Function(BuildContext, String?)? sUEmailTextControllerValidator;
  String? _sUEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SU-Password widget.
  FocusNode? sUPasswordFocusNode;
  TextEditingController? sUPasswordTextController;
  late bool sUPasswordVisibility;
  String? Function(BuildContext, String?)? sUPasswordTextControllerValidator;
  String? _sUPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SU-ConfirmPassword widget.
  FocusNode? sUConfirmPasswordFocusNode;
  TextEditingController? sUConfirmPasswordTextController;
  late bool sUConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      sUConfirmPasswordTextControllerValidator;
  String? _sUConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for LI-Email widget.
  FocusNode? lIEmailFocusNode;
  TextEditingController? lIEmailTextController;
  String? Function(BuildContext, String?)? lIEmailTextControllerValidator;
  String? _lIEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for LI-Password widget.
  FocusNode? lIPasswordFocusNode;
  TextEditingController? lIPasswordTextController;
  late bool lIPasswordVisibility;
  String? Function(BuildContext, String?)? lIPasswordTextControllerValidator;
  String? _lIPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    sUEmailTextControllerValidator = _sUEmailTextControllerValidator;
    sUPasswordVisibility = false;
    sUPasswordTextControllerValidator = _sUPasswordTextControllerValidator;
    sUConfirmPasswordVisibility = false;
    sUConfirmPasswordTextControllerValidator =
        _sUConfirmPasswordTextControllerValidator;
    lIEmailTextControllerValidator = _lIEmailTextControllerValidator;
    lIPasswordVisibility = false;
    lIPasswordTextControllerValidator = _lIPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    sUEmailFocusNode?.dispose();
    sUEmailTextController?.dispose();

    sUPasswordFocusNode?.dispose();
    sUPasswordTextController?.dispose();

    sUConfirmPasswordFocusNode?.dispose();
    sUConfirmPasswordTextController?.dispose();

    lIEmailFocusNode?.dispose();
    lIEmailTextController?.dispose();

    lIPasswordFocusNode?.dispose();
    lIPasswordTextController?.dispose();
  }
}
