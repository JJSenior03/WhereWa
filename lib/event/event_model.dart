import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for EventName widget.
  TextEditingController? eventNameController;
  String? Function(BuildContext, String?)? eventNameControllerValidator;
  DateTime? datePicked;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    descriptionController?.dispose();
    eventNameController?.dispose();
  }

  /// Additional helper methods are added here.

}
