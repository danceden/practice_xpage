
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
  Category(id: '2', name: 'Овощи и зелень', image: 'assets/images/categories/vegetables.jpeg'),
  Category(id: '3', name: 'Cухофрукты', image: 'assets/images/categories/dry_fruits.png'),
  Category(id: '4', name: 'Сладости', image: 'assets/images/categories/sugar.jpeg'),
  Category(id: '5', name: 'Напитки', image: 'assets/images/categories/drinks.jpeg'),
  Category(id: '6', name: 'Ореховые пасты и урбечи', image: 'assets/images/categories/nut_pasta.png'),
  Category(id: '7', name: 'Мед и крем-мед', image: 'assets/images/categories/honey.jpeg'),
  Category(id: '8', name: 'Варенье', image: 'assets/images/categories/djem.png'),
  Category(id: '9', name: 'Заморозка', image: 'assets/images/categories/frozen.jpeg'),
  Category(id: '10', name: 'Крупы', image: 'assets/images/categories/oats.jpeg')
];
