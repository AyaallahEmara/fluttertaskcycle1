import 'package:flutter/material.dart';
import 'package:fluttertaskcycle1/models/product_model.dart';
import 'package:fluttertaskcycle1/services/get_all_products_service.dart';
import 'package:fluttertaskcycle1/widgets/custom_card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
         IconButton(onPressed: (){}, icon:  Icon(
           FontAwesomeIcons.cartPlus,
           color: Colors.black,
         )),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(
            fontFamily: 'Pacifico',
            color: Colors.black,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: FutureBuilder<List<ProductModel>>(
          future: GetAllProducts().getAllProducts(),
          builder: (context,snapshot)
          {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2/3.1,
                  ),
                  itemBuilder: (context,index){
                    return CustomCardWidget(product: products[index],);
                  });
            }
            else
              {
                return Center(child: CircularProgressIndicator());
              }
          },
        ),
      ),
    );
  }
}
