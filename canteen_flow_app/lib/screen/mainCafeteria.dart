import 'package:flutter/material.dart';

class MainCafeteria extends StatefulWidget {
  const MainCafeteria({Key? key});

  @override
  State<MainCafeteria> createState() => _MainCafeteriaState();
}

class _MainCafeteriaState extends State<MainCafeteria> {
  ScrollController _horizontalScrollController = ScrollController();
  ScrollController _verticalScrollController = ScrollController();
  int currentVisibleIndex = 0;

  List<Map<String, dynamic>> categories = [
    {"name": "PizzaPizzaPizza"},
    {"name": "Bur"},
    {"name": "Hotdog"},
    {"name": "Sandwich"},
    {"name": "Taco"},
    {"name": "Bun"},
    {"name": "Bread"}
  ];

  List<Map<String, dynamic>> popular = [
    {"image": "assets/1.png", "name": "Chicken rice         ", "price": "Rs.85.00"},
    {"image": "assets/1.png", "name": "Fish Sandwiches ", "price": "Rs.35.00"},
    {"image": "assets/1.png", "name": "Veggi Taco           ", "price": "Rs.35.00"},
    {"image": "assets/1.png", "name": "Hotdog                 ", "price": "Rs.65.00"},
    {"image": "assets/1.png", "name": "Veggi Taco           ", "price": "Rs.35.00"},
    {"image": "assets/1.png", "name": "Veggi Taco           ", "price": "Rs.35.00"}
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
        body: OrientationBuilder(
          builder: (context, orientation) {
            return Column(
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
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
                            width:
                                orientation == Orientation.portrait ? 125 : 80,
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
                                    color: Colors.black,
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
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(popular.length, (index) {
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
                                      horizontal: 6, vertical: 15),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const SizedBox(width: 20),
                                      Image.asset(
                                        popular[index]['image'],
                                        width:
                                            orientation == Orientation.portrait
                                                ? 80
                                                : 120,
                                        height:
                                            orientation == Orientation.portrait
                                                ? 80
                                                : 120,
                                      ),
                                      const SizedBox(width: 40),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            popular[index]['name'],
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            popular[index]['price'],
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const SizedBox(width: 20),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '+ Add',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: 'Rubik',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                        );
                      }),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: SizedBox(
          height: 105, // adjust this value as you need
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
              height: 100.0, // Change the height to your desired value
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 1,
                    child: Container(
                        width: 356,
                        height:
                            80, // Change the height to match the parent container
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5B358),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // align the texts horizontally
                          children: [
                            Column(
                              // wrap the text widgets in a column
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // align the column to the left
                              mainAxisSize: MainAxisSize
                                  .min, // set the column size to the minimum
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
                              'Rs. 260',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        )),
                  ),
                  // Add other widgets or components inside the bottom app bar as needed
                ],
              ),
            ),
          ),
        ));
  }
}
