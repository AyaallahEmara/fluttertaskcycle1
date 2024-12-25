import 'package:flutter/material.dart';
import 'package:fluttertaskcycle1/models/product_model.dart';

class CustomCardWidget extends StatelessWidget {
  ProductModel product;

   CustomCardWidget({ required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 20,
                offset: Offset(1, 1),
              ),
              ]
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0), // Border radius
              side: BorderSide(
                color: Colors.indigo, // Border color
                width: 1.5, // Border width
              ),
            ),
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.network(product.image,height: 170,width: 220,),
                  ),
                  Text(
                    product.title.substring(0,11),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    product.description,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'EGP ${product.price.toString()}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        '${product.price*2}EGP',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.blue,
                          decorationThickness: 1.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Review (${product.rating!.rate.toString()})',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.star,color: Colors.yellow,),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: FloatingActionButton(
                          onPressed: (){},
                          backgroundColor: Colors.indigo,
                          child: Icon(Icons.add,color: Colors.white,),
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 10,
            right: 16,
            child: SizedBox(
              height: 32,
              width: 32,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: (){},
                  shape: CircleBorder(),
                  child: Icon(Icons.favorite_border,color: Colors.indigo,)
              ),
            )
        ),
      ],
    );
  }
}
