class FruitVegetable {
  late String imageUrl;
  late String title;
  late String category;
  late String description;

  FruitVegetable(
      {this.imageUrl = '',
      this.title = '',
      this.category = '',
      this.description = ''});
}

final List<FruitVegetable> recommendations = [
  FruitVegetable(imageUrl: 'assets/images/apel.png', title: 'Apel'),
  FruitVegetable(imageUrl: 'assets/images/apel.png', title: 'Apel'),
  FruitVegetable(imageUrl: 'assets/images/apel.png', title: 'Apel'),
];

final List<FruitVegetable> fruits = [
  FruitVegetable(
      imageUrl: 'assets/images/apel.png',
      title: 'Apel',
      category: 'Buah',
      description:
          'Apel merupakan jenis buah-buahan, atau buah yang dihasilkan dari pohon buah '),
  FruitVegetable(
      imageUrl: 'assets/images/apel.png',
      title: 'Apel',
      category: 'Buah',
      description:
          'Apel merupakan jenis buah-buahan, atau buah yang dihasilkan dari pohon buah '),
  FruitVegetable(
      imageUrl: 'assets/images/apel.png',
      title: 'Apel',
      category: 'Buah',
      description:
          'Apel merupakan jenis buah-buahan, atau buah yang dihasilkan dari pohon buah '),
  FruitVegetable(
      imageUrl: 'assets/images/apel.png',
      title: 'Apel',
      category: 'Buah',
      description:
          'Apel merupakan jenis buah-buahan, atau buah yang dihasilkan dari pohon buah '),
];
