import 'package:flutter/material.dart';

Widget buildCard(
  Map<String, dynamic> item,
  Function onAddPressed,
  Function onRemovePressed,
) {
  return GestureDetector(
    child: Card(
      elevation: 5,
      color: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(width: 20),
            Image.asset(
              item['image'],
              width: 80, // Adjust as needed
              height: 80, // Adjust as needed
            ),
            const SizedBox(width: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item['name'],
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  item['price'],
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
            Expanded(child: SizedBox()), // Pushes buttons to the right
            Row(
              mainAxisSize: MainAxisSize.min, // Keep the buttons as small as possible
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(36, 36),
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () =>
                      onAddPressed(double.parse(item['price'].substring(3))),
                  child: Icon(Icons.add, size: 20),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(36, 36),
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () =>
                      onRemovePressed(double.parse(item['price'].substring(3))),
                  child: Icon(Icons.remove, size: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    onTap: () {},
  );
}

class GalleryCafeteria extends StatefulWidget {
  const GalleryCafeteria({Key? key});

  @override
  State<GalleryCafeteria> createState() => _GalleryCafeteriaState();
}

class _GalleryCafeteriaState extends State<GalleryCafeteria> {
  ScrollController _horizontalScrollController = ScrollController();
  ScrollController _verticalScrollController = ScrollController();
  int currentVisibleIndex = 0;

  List<Map<String, dynamic>> RiceandCurry = [
    {"image": "assets/food/Veggie.png", "name": "Veggie", "price": "Rs.80.00"},
    {"image": "assets/food/Egg.png", "name": "Egg", "price": "Rs.35.00"},
    {"image": "assets/food/Omlet.png", "name": "Omlet", "price": "Rs.35.00"},
    {"image": "assets/food/Fish.png", "name": "Fish", "price": "Rs.65.00"},
    {"image": "assets/food/Chicken.png", "name": "Chicken Taco", "price": "Rs.35.00"},
  ];
  List<Map<String, dynamic>> FriedRice = [
    {"image": "assets/1.png", "name": "Veggie", "price": "Rs.80.00"},
    {"image": "assets/food/Egg rice.png", "name": "Egg", "price": "Rs.35.00"},
    {"image": "assets/food/Omlet rice.png", "name": "Omlet", "price": "Rs.35.00"},
    {"image": "assets/food/Fish rice.png", "name": "Fish", "price": "Rs.65.00"},
    {"image": "assets/food/Chicken rice.png", "name": "Chicken Taco", "price": "Rs.35.00"},
  ];
  List<Map<String, dynamic>> SnacksShortEats = [
    {"image": "assets/food/Kadala Vadai.png", "name": "Kadal Vadai", "price": "Rs.80.00"},
    {"image": "assets/food/Mutton Rolls.jpg.png", "name": "Mutton Rolls", "price": "Rs.35.00"},
    {"image": "assets/food/Patties.png", "name": "Patties", "price": "Rs.35.00"},
    {"image": "assets/food/Samosas.png", "name": "Samosa", "price": "Rs.65.00"},
    {"image": "assets/food/Fish Cutlets.png", "name": "Fish Cutlets", "price": "Rs.35.00"},
  ];
  List<Map<String, dynamic>> Drinks = [
    {"image": "assets/food/Lemon Juice.png", "name": "Lemon Juice", "price": "Rs.80.00"},
    {"image": "assets/food/Mango Juice.png", "name": "Mango Juice", "price": "Rs.35.00"},
    {"image": "assets/food/Papaya Juice.png", "name": "Omlet", "price": "Rs.35.00"},
    {"image": "assets/food/Watermelon.png", "name": "Watermelon", "price": "Rs.65.00"},
  ];

  List<double> selectedPrices = [];

  @override
  void initState() {
    super.initState();
    _horizontalScrollController.addListener(_onHorizontalScroll);
    _verticalScrollController.addListener(_onVerticalScroll);
  }

  @override
  void dispose() {
    _horizontalScrollController.removeListener(_onHorizontalScroll);
    _verticalScrollController.removeListener(_onVerticalScroll);
    _horizontalScrollController.dispose();
    _verticalScrollController.dispose();
    super.dispose();
  }

  void _onHorizontalScroll() {
    int newIndex = (_horizontalScrollController.offset / 105).round();
    if (newIndex != currentVisibleIndex) {
      setState(() {
        currentVisibleIndex = newIndex;
      });
    }
  }

  void _onVerticalScroll() {
    // You can handle vertical scrolling logic here if needed
  }

  void _onAddButtonPressed(double price) {
    setState(() {
      selectedPrices.add(price);
    });
  }

  void _onRemoveButtonPressed(double price) {
    setState(() {
      selectedPrices.remove(price);
    });
  }

  double _calculateTotalAmount() {
    return selectedPrices.isNotEmpty
        ? selectedPrices.reduce((a, b) => a + b)
        : 0;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Two tabs: Categories and Popular
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/canteen/Gallery.png",
            height: 100,
            width: 250,
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Rice and Curry'),
              Tab(text: 'Fried Rice'),
              Tab(text: 'Snacks & Short Eats'),
              Tab(text: 'Drinks'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: Categories
            SingleChildScrollView(
              child: Column(
                children: List.generate(RiceandCurry.length, (index) {
                  return buildCard(
                      RiceandCurry[index], _onAddButtonPressed, _onRemoveButtonPressed);
                }),
              ),
            ),
            // Tab 2: Fried Rice
            SingleChildScrollView(
              child: Column(
                children: List.generate(FriedRice.length, (index) {
                  return buildCard(
                      FriedRice[index], _onAddButtonPressed, _onRemoveButtonPressed);
                }),
              ),
            ),
            // Tab 3: Snacks & Short Eats
            SingleChildScrollView(
              child: Column(
                children: List.generate(SnacksShortEats.length, (index) {
                  return buildCard(SnacksShortEats[index], _onAddButtonPressed,
                      _onRemoveButtonPressed);
                }),
              ),
            ),
            // Tab 4: Drinks
            SingleChildScrollView(
              child: Column(
                children: List.generate(Drinks.length, (index) {
                  return buildCard(Drinks[index], _onAddButtonPressed, _onRemoveButtonPressed);
                }),
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 105,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
              height: 100.0,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 1,
                    child: Container(
                      width: 356,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5B358),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              Text(
                                'amount to pay',
                                style: TextStyle(
                                  color: Color(0x7F2A2D37),
                                  fontSize: 12,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            'Rs. ${_calculateTotalAmount().toStringAsFixed(2)}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


