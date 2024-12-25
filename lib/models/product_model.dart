class ProductModel{
  final int id;
  final String title;
  final dynamic price;
  final String category;
  final String description;
  final String image;
  final RatingModel? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
    required this.rating
  });

  factory ProductModel.fromJson(jsonData)
  {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        category: jsonData['category'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: jsonData['rating'] == null
            ? null
            : RatingModel.fromJson(jsonData['rating']));
  }
}
class RatingModel
{
  final dynamic rate;
  final dynamic count;

  RatingModel({required this.rate,required this.count});

  factory RatingModel.fromJson(jsonData)
  {
    //print(jsonData['rate']);
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}