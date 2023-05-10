
class Stock{
  final String id;
  final String title;
  final String subTitle;
  final String image;

  Stock(
      this.id,
      this.title,
      this.subTitle,
      this.image
      );
}

List<Stock> stocksList = [
  Stock("1", "Больше — выгодней", "c 18 февраля по 16 марта", "assets/images/stocks/meal.jpeg"),
  Stock("2", "Больше — выгодней", "c 18 февраля по 16 марта", "assets/images/stocks/avokado.jpeg"),
];