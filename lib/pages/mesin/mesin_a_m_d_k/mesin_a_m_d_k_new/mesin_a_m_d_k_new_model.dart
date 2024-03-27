import '/flutter_flow/flutter_flow_util.dart';
import 'mesin_a_m_d_k_new_widget.dart' show MesinAMDKNewWidget;
import 'package:flutter/material.dart';

class MesinAMDKNewModel extends FlutterFlowModel<MesinAMDKNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
