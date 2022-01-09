import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:online_hop/pages/general_ui_item.dart';

class ImagesStepper extends StatefulWidget {
  @override
  _ImagesStepperState createState() => _ImagesStepperState();
}

class _ImagesStepperState extends State<ImagesStepper> {
  bool isLoading = false;
  bool isFetched = false;

  List path = [
    "assets/img2.jpeg",
    "assets/img1.jpg",
    "assets/img2.jpeg",
    "assets/img2.jpg",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildImages();
  }

  Widget buildImages(){
    return SizedBox(
          height:200, //MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
          child: Swiper(
            
            pagination: SwiperPagination(margin: EdgeInsets.only(bottom: 64),
              builder: DotSwiperPaginationBuilder(
                activeColor: Colors.white,
                color: Colors.grey,
                activeSize: 20.0,space: 4,
              ),
            ),
            loop: false,
            autoplay: false,
            autoplayDelay: 5500,
            indicatorLayout: PageIndicatorLayout.COLOR,
            itemCount: path.length,
            itemBuilder: (b, index) {
              return Image.asset(
                path[index],
                fit: BoxFit.fill,
                width: double.infinity,
              );
            },
          ),
        );
        
  }

 
}
