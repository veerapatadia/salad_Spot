import 'package:coreflutter/Utils/all_products_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class product_detail_page extends StatefulWidget {
  const product_detail_page({super.key});

  @override
  State<product_detail_page> createState() => _product_detail_pageState();
}

class _product_detail_pageState extends State<product_detail_page> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.favorite_border,
              size: 27,
            ),
          ),
        ],
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            alignment: Alignment.bottomCenter,
          ),
          Container(
            height: 650,
            width: 410,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            // padding: EdgeInsets.only(top: 160),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...data['image'].map((e) {
                    return Container(
                      height: 380,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 530),
                      child: CircleAvatar(
                        foregroundImage: NetworkImage(e),
                        radius: 125,
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 300),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            (data['count'] == 0)
                                ? Container()
                                : Container(
                                    margin: EdgeInsets.only(left: 128),
                                    height: 50,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.green,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              data['count']--;
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "${data['count']}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              data['count']++;
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 53),
                          child: Row(
                            children: [
                              Text(
                                "${data['title']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "${data['description']}",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            height: 1.5,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " Read More",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "⭐ ${data['rating']}",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "🔥 ${data['kcal']} Kcal",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "⌚ ${data['average']} min",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 18),
                          child: Row(
                            children: [
                              Text(
                                "Ingradients",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...data['ingradients'].map((e) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 18),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 65,
                                          width: 65,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.grey.shade300,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${e}",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                })
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        ProductData.cartData.add(data);
                        ProductData.convertUniqueData();
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 360,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Add To Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
