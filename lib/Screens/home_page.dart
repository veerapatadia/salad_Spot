import 'package:coreflutter/Utils/all_products_data.dart';
import 'package:coreflutter/Utils/global_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool isTapped = false;
  bool isAdded = false;
  dynamic? salad;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 25,
                      ),
                      Text(
                        "Habiganj City",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('favourite_page');
                                  },
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('cart_page');
                                },
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 27,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Find The ",
                                  style: TextStyle(
                                    fontSize: 29,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "Best",
                                  style: TextStyle(
                                    fontSize: 29,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Food",
                                  style: TextStyle(
                                    height: 1.3,
                                    fontSize: 29,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: " Around You ",
                                  style: TextStyle(
                                    fontSize: 29,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            width: 370,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      size: 25,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Search your favourite food",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey.shade700),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.compare_arrows,
                                  size: 26,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.green,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Find  ",
                                  style: TextStyle(
                                    fontSize: 29,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: "5km",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 19,
                            color: Colors.red,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          (isTapped == true)
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      salad = null;
                                    });
                                  },
                                  child: GlobalData.button(
                                    text: "Salads",
                                  ),
                                )
                              : Ink(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        salad = null;
                                      });
                                    },
                                    child: GlobalData.button(
                                      text: 'Salads',
                                    ),
                                  ),
                                ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                salad = "hot sale";
                              });
                            },
                            child: GlobalData.button(
                              text: "Hot sale",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                salad = "popularity";
                              });
                            },
                            child: GlobalData.button(
                              text: "Popularity",
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...ProductData.allProductData.map(
                        (e) => Container(
                          // color: Colors.pink,
                          height: 300,
                          width: 460,
                          child: Row(
                            children: [
                              ...e['categoryProducts']
                                  .map((Map<String, dynamic> e) {
                                return (e['category'] == salad || salad == null)
                                    ? Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pushNamed(
                                                'product_detail_page',
                                                arguments: e);
                                          },
                                          child: Container(
                                            //color: Colors.red,
                                            padding: EdgeInsets.only(left: 14),
                                            margin: EdgeInsets.only(
                                                right: 10, bottom: 20),
                                            // color: Colors.red,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(20),
                                                        topRight:
                                                            Radius.circular(20),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(9),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(
                                                                () {
                                                                  ProductData
                                                                      .favData
                                                                      .add(e);
                                                                  ProductData
                                                                      .favProductData
                                                                      .add(e);
                                                                  ProductData
                                                                      .convertData();
                                                                  isAdded =
                                                                      !isAdded;
                                                                },
                                                              );
                                                            },
                                                            child: Icon(
                                                              isAdded
                                                                  ? Icons
                                                                      .favorite
                                                                  : Icons
                                                                      .favorite_border,
                                                              color: isAdded
                                                                  ? Colors.red
                                                                  : Colors
                                                                      .black,
                                                              size: 25,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          child: CircleAvatar(
                                                            radius: 58,
                                                            foregroundImage:
                                                                NetworkImage(
                                                              "${e['thumbnail']}",
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
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(20),
                                                        bottomRight:
                                                            Radius.circular(20),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Text(
                                                              "${e['title']}",
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .black),
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Text(
                                                              "20 min",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .star_border_outlined,
                                                                  color: Colors
                                                                      .amber,
                                                                ),
                                                                Text(
                                                                  "${e['rating']}",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      color: Colors
                                                                          .grey,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 35,
                                                                  left: 13),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                "\$ ${e['price']}",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        19,
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              (e['count'] == 0)
                                                                  ? GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          ProductData
                                                                              .cartData
                                                                              .add(e);
                                                                          ProductData
                                                                              .convertUniqueData();
                                                                          e['count']++;
                                                                        });
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            30,
                                                                        width:
                                                                            40,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.lightGreen,
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomRight:
                                                                                Radius.circular(
                                                                              15,
                                                                            ),
                                                                            topLeft:
                                                                                Radius.circular(17),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .add,
                                                                          size:
                                                                              22,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  : Container(
                                                                      height:
                                                                          30,
                                                                      width: 40,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .lightGreen,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomRight:
                                                                              Radius.circular(
                                                                            15,
                                                                          ),
                                                                          topLeft:
                                                                              Radius.circular(17),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .done,
                                                                        size:
                                                                            22,
                                                                        color: Colors
                                                                            .white,
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
                                      )
                                    : Container();
                              }).toList(),
                            ],
                          ),
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
    );
  }
}
