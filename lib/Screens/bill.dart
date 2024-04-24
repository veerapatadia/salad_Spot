import 'dart:io';
import 'package:coreflutter/utils/all_products_data.dart';
import 'package:coreflutter/utils/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class bill_page extends StatefulWidget {
  const bill_page({super.key});

  @override
  State<bill_page> createState() => _bill_pageState();
}

class _bill_pageState extends State<bill_page> {
  final pw.Document pdf = pw.Document();
  @override
  void initState() {
    super.initState();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            children: [
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 20),
                    child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Text(
                          "SaladSpot",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 30,
                              color: PdfColors.green900),
                        ),
                      ],
                    ),
                  ),
                  //color: Colors.red,
                ),
              ),
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        child: pw.Container(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 16),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Bill to",
                                      style: TextStyling.style3,
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Veera Patadia",
                                      style: TextStyling.style4,
                                    )
                                  ],
                                ),
                                pw.Column(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          "Near St.Mary School, Kalawad Road",
                                          style: TextStyling.style4,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //color: Colors.blue,
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(right: 16),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Text(
                                      "Invoice",
                                      style: TextStyling.style3,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Text(
                                      "1111",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Text(
                                      "Date",
                                      style: TextStyling.style3,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Text(
                                      "09/05/2005",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  //color: Colors.blue,
                ),
              ),
              pw.Expanded(
                flex: 3,
                child: pw.Container(
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 16, right: 16),
                    child: pw.Column(
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(top: 10),
                          child: pw.Divider(
                            thickness: 2,
                            color: PdfColors.green,
                          ),
                        ),
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 20),
                              child: pw.Column(
                                children: [
                                  pw.Text(
                                    "Description",
                                    style: TextStyling.style3,
                                  ),
                                ],
                              ),
                            ),
                            pw.Padding(
                              padding:
                                  const pw.EdgeInsets.only(left: 50, top: 20),
                              child: pw.Column(
                                children: [
                                  pw.Text(
                                    "Price",
                                    style: TextStyling.style3,
                                  ),
                                ],
                              ),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 20),
                              child: pw.Text(
                                "Qty",
                                style: TextStyling.style3,
                              ),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 20),
                              child: pw.Text(
                                "Total",
                                style: TextStyling.style3,
                              ),
                            ),
                          ],
                        ),
                        pw.Column(
                          children: [
                            ...ProductData.cartProductData.map(
                              (e) => pw.Padding(
                                padding: const pw.EdgeInsets.only(top: 20),
                                child: pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          "${e['title']}",
                                          style: TextStyling.style4,
                                        ),
                                      ],
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 50),
                                      child: pw.Column(
                                        children: [
                                          pw.Text(
                                            "${e['price']}",
                                            style: TextStyling.style4,
                                          ),
                                        ],
                                      ),
                                    ),
                                    pw.Text(
                                      "${e['count']}",
                                      style: TextStyling.style4,
                                    ),
                                    pw.Text(
                                      "${e['total']}",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //color: Colors.green,
                ),
              ),
              pw.Divider(
                color: PdfColors.green,
                thickness: 2,
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Container(
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        child: pw.Container(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(
                                left: 16, right: 16, top: 20),
                            child: pw.Column(
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    children: [
                                      pw.Text(
                                        "Payment Method",
                                        style: TextStyling.style3,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.Text(
                                      "Credit Card",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    children: [
                                      pw.Text(
                                        "Terms & Condition",
                                        style: TextStyling.style3,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Column(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          "Ownership and Copyright of The Content ",
                                          style: TextStyling.style4,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //color: Colors.red,
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(
                                left: 16, right: 16, top: 20),
                            child: pw.Column(
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text(
                                        "SubTotal",
                                        style: TextStyling.style3,
                                      ),
                                      pw.Text(
                                        "\$${ProductData.totalprice()}",
                                        style: TextStyling.style4,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text(
                                        "Tax",
                                        style: TextStyling.style3,
                                      ),
                                      pw.Text(
                                        "5.0",
                                        style: TextStyling.style4,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text(
                                        "Grand Total",
                                        style: TextStyling.style3,
                                      ),
                                      pw.Text(
                                        "\$ ${ProductData.taxTotal()}",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          //color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  //color: Colors.amber,
                ),
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SaladSpot",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green.shade800),
                    ),
                  ],
                ),
              ),
              //color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Bill to",
                                  style: TextStyling.style,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Veera Patadia",
                                  style: TextStyling.style2,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Near St. Mary School, Kalawad Road",
                                      style: TextStyling.style2,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      //color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Invoice",
                                  style: TextStyling.style,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "1111",
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Date",
                                  style: TextStyling.style,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "09/05/2005",
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // color: Colors.amber,
                    ),
                  ),
                ],
              ),
              //color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                "Description",
                                style: TextStyling.style,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 20),
                          child: Column(
                            children: [
                              Text(
                                "Price",
                                style: TextStyling.style,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Qty",
                            style: TextStyling.style,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Total",
                            style: TextStyling.style,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ...ProductData.cartProductData.map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "${e['title']}",
                                      style: TextStyling.style2,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Column(
                                    children: [
                                      Text(
                                        "${e['price']}",
                                        style: TextStyling.style2,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "${e['count']}",
                                  style: TextStyling.style2,
                                ),
                                Text(
                                  "${e['total']}",
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //color: Colors.green,
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Payment Method",
                                    style: TextStyling.style,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Credit Card",
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Terms & Condition",
                                    style: TextStyling.style,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Ownership and Copyright of The Content ",
                                      style: TextStyling.style2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "SubTotal",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "\$${ProductData.totalprice()}",
                                    style: TextStyling.style2,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tax",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "5.0",
                                    style: TextStyling.style2,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Grand Total",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "\$ ${ProductData.taxTotal()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //color: Colors.amber,
                    ),
                  ),
                ],
              ),
              //color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () async {
                    final Directory? directory =
                        await getExternalStorageDirectory();
                    final File file =
                        File("${directory!.path}/${ProductData.pdfName}.pdf");
                    await file.writeAsBytes(await pdf.save());
                  },
                  child: Icon(Icons.download),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
