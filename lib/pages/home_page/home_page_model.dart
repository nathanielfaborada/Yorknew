import '/flutter_flow/flutter_flow_util.dart';
import '/top_component/copy_right/copy_right_widget.dart';
import '/top_component/top_nav1/top_nav1_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopNav1 component.
  late TopNav1Model topNav1Model;
  // Model for copyRight component.
  late CopyRightModel copyRightModel;

  @override
  void initState(BuildContext context) {
    topNav1Model = createModel(context, () => TopNav1Model());
    copyRightModel = createModel(context, () => CopyRightModel());
  }

  @override
  void dispose() {
    topNav1Model.dispose();
    copyRightModel.dispose();
  }
}
