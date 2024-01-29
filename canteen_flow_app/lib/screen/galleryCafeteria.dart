import 'package:flutter/material.dart';

class GalleryCafeteria extends StatefulWidget {
  const GalleryCafeteria({super.key});

  @override
  State<GalleryCafeteria> createState() => _GalleryCafeteriaState();
}

class _GalleryCafeteriaState extends State<GalleryCafeteria> {
  ScrollController _horizontalScrollController = ScrollController();
  ScrollController _verticalScrollController = ScrollController();
  int currentVisibleIndex = 0;

  List<Map<String, dynamic>> categories = [
    {"name": "PizzaPizzaPizza"},
    {"name": "Burger"},
    {"name": "Hotdog"},
    {"name": "Sandwich"},
    {"name": "Taco"},
    {"name": "Bun"},
    {"name": "Bread"}
  ];

  List<Map<String, dynamic>> popular = [
    {"image": "assets/1.png", "name": "Chicken Pastry", "price": "Rs.85.00"},
    {"image": "assets/1.png", "name": "Fish Sandwiches", "price": "Rs.35.00"},
    {"image": "assets/1.png", "name": "Veggi Taco", "price": "Rs.35.00"},
    {"image": "assets/1.png", "name": "Hotdog", "price": "Rs.65.00"},
    {"image": "assets/1.png", "name": "Veggi Taco", "price": "Rs.35.00"}
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/splash.png",
          height: 100,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              height: 65,
              width: double.infinity,
              child: ListView(
                controller: _horizontalScrollController,
                scrollDirection: Axis.horizontal,
                children: List.generate(categories.length, (index) {
                  return Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Container(
                        width: 125,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: index == currentVisibleIndex
                              ? const Color(0xFFFFC107)
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              categories[index]['name'],
                              style: const TextStyle(
                                fontSize: 16,
                                color:
                                    Colors.black, // Change text color if needed
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]);
                }),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ListView.builder(
                controller: _verticalScrollController,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: popular.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Card(
                      elevation: 5,
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(width: 20),
                                Image.asset(
                                  popular[index]['image'],
                                  width: 80,
                                  height: 80,
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      popular[index]['name'],
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    Text(
                                      popular[index]['price'],
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 20),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '+ Add',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const FoodDetails()),
                      // );
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              //this container
              width: 356,
              height: 77,
              decoration: ShapeDecoration(
                color: Color(0xFFF5B358),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Additional Text',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Text(
                      'Rs. 120',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
