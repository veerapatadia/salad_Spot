import 'package:coreflutter/Utils/all_products_data.dart';
import 'package:flutter/material.dart';

class favourite_page extends StatefulWidget {
  const favourite_page({super.key});

  @override
  State<favourite_page> createState() => _favourite_pageState();
}

class _favourite_pageState extends State<favourite_page> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.topCenter,
            color: Colors.green,
            child: Padding(
              padding: EdgeInsets.only(top: 25, left: 10, right: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 108,
                  ),
                  Text(
                    "Favourite",
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
            height: 770,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xfffaf9fe),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...ProductData.favProductData.map(
                    (e) => Padding(
                      padding: EdgeInsets.only(top: 18, left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 370,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    color: Colors.grey.shade400,
                                    offset: Offset(0, 2))
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: CircleAvatar(
                                      radius: 45,
                                      foregroundImage: NetworkImage(
                                        "${e['thumbnail']}",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${e['title']}",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          ProductData.favProductData.remove(e);
                                          ProductData.favData.remove(e);
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 33,
                                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
