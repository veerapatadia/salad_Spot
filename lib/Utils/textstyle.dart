import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class TextStyling {
  static TextStyle style =
      TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold);

  static TextStyle style2 = TextStyle(
    fontSize: 16,
  );
  static pw.TextStyle style3 = pw.TextStyle(
      color: PdfColors.green, fontSize: 21, fontWeight: pw.FontWeight.bold);
  static pw.TextStyle style4 = pw.TextStyle(
    fontSize: 17,
  );
}
