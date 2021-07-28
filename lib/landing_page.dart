import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/rendering.dart';
import 'slider_top_restaurants_component.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_state.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var current = 0;
  List<SliderTopRestaurantsComponent> _items = [
    SliderTopRestaurantsComponent(
      imagepath: 'images/logos/mcd.png',
      title: "McDonald's",
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/logos/dominos.png',
      title: 'Dominos',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/logos/kfc.png',
      title: 'KFC',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/logos/bk.png',
      title: 'Burger King',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/logos/pizzahut.png',
      title: 'Pizza Hut',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/logos/subway.png',
      title: 'Subway',
    ),
  ];

  List<SliderTopRestaurantsComponent> _itemsDishes = [
    SliderTopRestaurantsComponent(
      imagepath: 'images/food/burger.png',
      title: "Burger",
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/food/coke.jpg',
      title: 'Coke',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/food/fries.jpg',
      title: 'French Fries',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/food/pizza.jpg',
      title: 'Pizza',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/food/sandwich.jpg',
      title: 'Sandwich',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/food/wrap.jpg',
      title: 'Wrap',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // TODO: Location and Offers App Bar
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "YOUR LOCATION",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.deepPurple,
                            ),
                            Text(
                              'NH2 Highway Delhi  ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        // SizedBox(
                        //   height: 24,
                        //   width: 24,
                        //   child: Image.asset(
                        //     'images/offers.png',
                        //   ),
                        // ),
                        Icon(
                          Icons.local_offer_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'OFFERS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              // TODO: Restaurants and Restroom
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Restaurants
                  Column(
                    children: [
                      Container(
                        width: 160,
                        height: 105,
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black87,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.dstATop),
                            image: AssetImage('images/restaurant.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Text(
                          'Restaurants',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        'Enjoy your favourite delights at top\nrestaurants with upto 20% off',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 9, color: Colors.black38),
                      ),
                    ],
                  ),
                  // Restrooms
                  Column(
                    children: [
                      Container(
                        width: 160,
                        height: 105,
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.dstATop),
                            image: AssetImage('images/restroom.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Text(
                          'Restrooms',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        'Search nearest & cleanest\nwashrooms on highways for free',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 9, color: Colors.black38),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),

              // TODO: Banner
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 47,
                        left: 235,
                      ),
                      child: Text(
                        'FUDO\nUpto 50% OFF',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 18),
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.purple,
                        // gradient: LinearGradient(
                        //   colors: [
                        //     Color(0xFF8743FF), Color(0xFF4136F1)
                        //     // 8743FF
                        //     // 4136F1
                        //   ],
                        // ),
                        image: DecorationImage(
                          image: AssetImage('images/banner.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),

              // TODO: Top Restaurants
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Top Restaurants for you',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Text('View All'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              // TODO: Slider for Top Restaurants
              SizedBox(
                height: 90,
                child: Row(
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: _items.map((item) {
                          return ColumnSuper(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 36.5,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(item.imagepath),
                              ),
                              Container(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  item.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                // width: 70,
                                height: 28,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF8743FF),
                                      Color(0xFF4136F1)
                                    ],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                ),
                              ),
                            ],
                            innerDistance: -12,
                          );
                        }).toList(),
                        // carouselController: _controller,
                        options: CarouselOptions(
                          // height: 100,
                          aspectRatio: 2.0,
                          // enlargeCenterPage: true,
                          viewportFraction: 0.23,
                          pageViewKey:
                              PageStorageKey<String>('carousel_slider'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Top Dishes for you',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Text('View All'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              // TODO: Slider for Top Dishes
              SizedBox(
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: _itemsDishes.map((item) {
                          return Column(
                            children: <Widget>[
                              Container(
                                width: 115,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(7),
                                    topRight: Radius.circular(7),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(item.imagepath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 115,
                                height: 52,
                                padding: EdgeInsets.fromLTRB(3, 4, 0, 0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item.title,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                            top: 7,
                                            right: 9,
                                            bottom: 3,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(11))),
                                          child: Column(
                                            children: [
                                              Text(
                                                'starting at',
                                                style: TextStyle(
                                                  fontSize: 7,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.deepPurple,
                                                ),
                                              ),
                                              Text(
                                                '50 INR',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF8743FF), Color(0xFF4136F1)
                                      // 8743FF
                                      // 4136F1
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7),
                                    bottomRight: Radius.circular(7),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                        // carouselController: _controller,
                        options: CarouselOptions(
                          // height: 100,
                          aspectRatio: 2.0,
                          // enlargeCenterPage: true,
                          viewportFraction: 0.31,
                          pageViewKey:
                              PageStorageKey<String>('carousel_slider'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
