class ProductModel {
  final String image;
  final String title;
  final String description;
  ProductModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<ProductModel> productsList = [
  ProductModel(
    image: 'assets/images/image3.jpg',
    title: 'HIMALAYAS',
    description: 'Top breathtaking views on the mighty clifs',
  ),
  ProductModel(
    image: 'assets/images/image3.jpg',
    title: 'BALOCHISTAN',
    description: 'Witness the extremes of the Sahara Desert',
  ),
  ProductModel(
    image: 'assets/images/image5.jpg',
    title: 'HIMALAYAS',
    description: 'Amazing panoramic Castle with big pool.',
  ),
  ProductModel(
    image: 'assets/images/image6.jpg',
    title: 'AFRICA',
    description: 'Witness the extremes of the Sahara Desert',
  ),
];
