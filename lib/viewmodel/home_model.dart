

class Popular {
  String imageUrl;
  String city;
  String country;
  String description;
  String rating;
  String prices;
  //List<Activity> activities;

  Popular({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.rating,
    required this.prices,
  });
}

//destination data
List<Popular> destinations = [
  Popular(
      imageUrl: 'assets/property11.jpg',
      city: '3BHK Villa, 1400  Sqft',
      country: 'with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      description:'Letraset sheets containing Lorem Ipsum passages, and more recently ',
      rating: '4.8 (13 Reviews)',
      prices: 'Rs 25000 / per month\n+70000 Deposit',
  ),
  Popular(
    imageUrl: 'assets/property5.jpg',
    city: 'Abbot, 1500  Sqft',
    country: 'Hazara',
    description: 'Letraset sheets containing Lorem Ipsum passages, and more recently ',
    rating: '4.5 (28 Reviews)',
    prices: 'Rs 15000 / per month\n+50000 Deposit',
  ),
  Popular(
    imageUrl: 'assets/property6.jpg',
    city: '3BHK Villa, 1400  Sqft',
    country: 'Hazara',
    description: 'Letraset sheets containing Lorem Ipsum passages, and more recently ',
    rating: '4.0 (28 Reviews)',
    prices: 'Rs 5000 / per month\n+10000 Deposit',
  ),
  Popular(
      imageUrl: 'assets/property1.jpg',
      city: '3BHK Villa, 1400  Sqft',
      country: 'Hazara',
      description: 'Elettra sheets containing Lorem Ipsum passages, and more recently ',
      rating: '3.5 (34 Reviews)',
      prices: 'Rs 22000 / per month\n+50000 Deposit',
  ),
  Popular(
      imageUrl: 'assets/property2.jpg',
      city: '3BHK Villa, 1400  Sqft',
      country: 'Hazara',
      description:  'Elettra sheets containing Lorem Ipsum passages, and more recently ',
      rating: '4.9 (12 Reviews)',
      prices: 'Rs 25000 / per month\n+70000 Deposit',
  ),
  Popular(
      imageUrl: 'assets/property1.jpg',
      city: '3BHK Villa, 1400  Sqft',
      country: 'Hazara',
      description:'Letraset sheets containing Lorem Ipsum passages, and more recently ',
      rating: '4.2 (23 Reviews)',
    prices: 'Rs 25000 / per month\n+70000 Deposit',
  ),
  Popular(
      imageUrl: 'assets/property2.jpg',
      city: '3BHK Villa, 1400  Sqft',
      country: 'Hazara',
      description: 'Letraset sheets containing Lorem Ipsum passages, and more recently ',
      rating: '4.2 (23 Reviews)',
      prices: 'Rs 25000 / per month\n+70000 Deposit',
  ),
];
