class Salons {
  final String name;
  final String address;
  final String image;

  Salons({required this.name, required this.address, required this.image});
}

List<Salons> salonList = [
  Salons(
    name: "Salon 1",
    address: "21 Bleeker Street",
    image: "assets/images/salon_1.jpg",
  ),
  Salons(
    name: "Salon 2",
    address: "13 Park Street",
    image: "assets/images/salon_2.jpg",
  ),
  Salons(
    name: "Salon 3",
    address: "22 Washington Street",
    image: "assets/images/salon_3.jpg",
  ),
  Salons(
    name: "Salon 4",
    address: "25 Wolf Street",
    image: "assets/images/salon_4.jpg",
  ),
  Salons(
    name: "Salon 5",
    address: "34 Lively Street",
    image: "assets/images/salon_5.jpg",
  ),
  Salons(
    name: "Salon 6",
    address: "18 Sunset Street",
    image: "assets/images/salon_6.jpg",
  ),
];
