import 'package:coreflutter/Utils/all_products_data.dart';
import 'package:coreflutter/Utils/global_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cart_page extends StatefulWidget {
  const cart_page({super.key});

  @override
  State<cart_page> createState() => _cart_pageState();
}

class _cart_pageState extends State<cart_page> {
  double newPrice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.green,
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Cart ",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 750,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xfffaf9fe),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...ProductData.cartProductData.map(
                            (e) => Padding(
                              padding: EdgeInsets.only(top: 18, left: 18),
                              child: Row(
                                children: [
                                  Container(
                                    height: 95,
                                    width: 372,
                                    decoration: BoxDecoration(
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            color: Colors.grey.shade400,
                                            offset: Offset(0, 2))
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: CircleAvatar(
                                              radius: 40,
                                              foregroundImage: NetworkImage(
                                                  "${e['thumbnail']}"),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(18),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    "${e['title']}",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Text(
                                                    "\$${e['price']}",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          e['count']--;
                                                          e['total'] =
                                                              e['price'] *
                                                                  e['count'];
                                                          if (e['count'] == 0) {
                                                            ProductData
                                                                .cartProductData
                                                                .remove(e);
                                                            ProductData.cartData
                                                                .remove(e);
                                                          }
                                                        });
                                                      },
                                                      child: GlobalData.button2(
                                                          icon: Icons.remove),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${e['count']}",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(
                                                          () {
                                                            e['count']++;
                                                            e['total'] =
                                                                e['price'] *
                                                                    e['count'];
                                                          },
                                                        );
                                                      },
                                                      child: GlobalData.button2(
                                                          icon: Icons.add),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Text(
                                                      "\$ ${e['total']}",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Container(
                            height: 75,
                            width: 370,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: Offset(0, 3),
                                    color: Colors.grey.shade200),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fact_check_outlined,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Promo Code",
                                        style: TextStyle(
                                          fontSize: 18,
                                          letterSpacing: 1,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 45,
                                    width: 115,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Apply",
                                      style: TextStyle(
                                        fontSize: 17.5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    //color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subtotal",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "\$ ${ProductData.totalprice()}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                (ProductData.cartProductData.isEmpty)
                                    ? Text(
                                        "\$0.00",
                                        style: TextStyle(
                                          fontSize: 19,
                                        ),
                                      )
                                    : Text(
                                        "\$3.50",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$ ${ProductData.grandtotal()}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "CHECKOUT",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
