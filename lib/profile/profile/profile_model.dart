import '/flutter_flow/flutter_flow_util.dart';
import '/profile/button_switch/button_switch_widget.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for buttonSwitch component.
  late ButtonSwitchModel buttonSwitchModel;

  @override
  void initState(BuildContext context) {
    buttonSwitchModel = createModel(context, () => ButtonSwitchModel());
  }

  @override
  void dispose() {
    buttonSwitchModel.dispose();
  }
}
