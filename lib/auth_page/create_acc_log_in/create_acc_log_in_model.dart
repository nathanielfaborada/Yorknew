import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_acc_log_in_widget.dart' show CreateAccLogInWidget;
import 'package:flutter/material.dart';

class CreateAccLogInModel extends FlutterFlowModel<CreateAccLogInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for p_email widget.
  FocusNode? pEmailFocusNode;
  TextEditingController? pEmailTextController;
  String? Function(BuildContext, String?)? pEmailTextControllerValidator;
  // State field(s) for p_password widget.
  FocusNode? pPasswordFocusNode;
  TextEditingController? pPasswordTextController;
  late bool pPasswordVisibility;
  String? Function(BuildContext, String?)? pPasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (createuser)] action in Button widget.
  ApiCallResponse? apiResult;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? logInDone;

  @override
  void initState(BuildContext context) {
    pPasswordVisibility = false;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    pEmailFocusNode?.dispose();
    pEmailTextController?.dispose();

    pPasswordFocusNode?.dispose();
    pPasswordTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
