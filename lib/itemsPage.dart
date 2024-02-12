import 'package:flutter/material.dart';
import 'package:new_screen/singleScree.dart';


class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

    List<String> imageList = [
  'assets/phone1.jpeg',
  'assets/phone2.jpeg',
  'assets/pnone3.jpeg',
  'assets/phone4.jpeg',
  'assets/phone1.jpeg',
  'assets/phone2.jpeg',
  'assets/pnone3.jpeg',
];

List itemName = [
    "I Phone 13 Pro Max",
    "I Phone 11",
    "I Phone 12",
    "Samsung",
    "I Phone 12 Pro",
    "I Phone 14",
    "I Phone 14 Pro",
    "I Phone 14 Pro Max",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:imageList.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.6),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 202, 199, 199),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 116, 116, 116),
                  blurRadius: 4,
                  spreadRadius: 4,
                ),
              ]
              ),
              child: Padding(padding: EdgeInsets.all(12),
              child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "50% OFF",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Icon(Icons.favorite,color: Colors.redAccent,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding:EdgeInsets.all(10),
                      child: Image.asset(imageList[index],
                      height: 65,
                      width: 95,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemName[index],
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text(
                                "\$200",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SingleScreen("I"),
        )
        );
                                },
                                child: Icon(
                                Icons.shopping_cart
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
              ),
              ),
            ),
          );
        },
        );

  }
}