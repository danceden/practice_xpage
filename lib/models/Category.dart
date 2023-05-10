
class Category{
  final String id;
  final String name;
  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image
  });
}

List<Category> categoryList = [
  Category(id: '1', name: 'Фрукты и ягоды', image: 'assets/images/categories/fruits.jpeg'),
  Category(id: '1', name: 'Овощи и зелень', image: 'assets/images/categories/vegetables.jpeg'),
];
