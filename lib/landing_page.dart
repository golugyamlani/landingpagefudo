import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
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
  List<SliderTopRestaurantsComponent> _items = [
    SliderTopRestaurantsComponent(
      imagepath: 'images/restaurants.png',
      title: 'Burger',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/restaurants.png',
      title: 'Fries',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/restaurants.png',
      title: 'Coke',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/restaurants.png',
      title: 'Pizza',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/restaurants.png',
      title: 'Wrap',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/restaurants.png',
      title: 'Sandwich',
    ),
    SliderTopRestaurantsComponent(
      imagepath: 'images/restaurants.png',
      title: 'Burger',
    ),
  ];

  @override
  var _current = 0;

  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // TODO: Location and Offers App Bar
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 5, 16, 0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "YOUR LOCATION",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text(
                              'NH2 Highway Delhi',
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
                        Icon(Icons.local_offer_outlined),
                        Text('OFFERS'),
                      ],
                    ),
                  ],
                ),
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                height: 200,
                decoration: BoxDecoration(
                  // color: Colors.purple,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF8743FF), Color(0xFF4136F1)
                      // 8743FF
                      // 4136F1
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Row(
                children: [
                  CarouselSlider(
                    items: _items.map((item) {
                      return ColumnSuper(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 36.5,
                            backgroundColor: Colors.grey,
                          ),
                          Container(
                            width: 66,
                            height: 24,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF8743FF), Color(0xFF4136F1)
                                  // 8743FF
                                  // 4136F1
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
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 1.1,
                        // enlargeCenterPage: true,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
