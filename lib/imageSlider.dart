import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget{
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List imagelist =[
    {"id":1, "image_path":'assets/images/download.jpg'},
    {"id":2, "image_path":'assets/images/images.jpg'}
  ];
  final CarouselController slidercontroller = CarouselController();
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: (){

              },
              child: CarouselSlider(
                items:imagelist.map(
                    (item) =>Image.asset(item['image_path'],
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width*0.9,)
                ).toList(),
                carouselController: slidercontroller,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentindex=index;
                    });
                  }
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imagelist.asMap().entries.map((entry){
                  return GestureDetector(
                    onTap: () => slidercontroller.animateToPage(entry.key),
                    child: Container(
                      width: currentindex==entry.key?17:7,
                      height: 7.0,
                      margin: EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentindex==entry.key? Colors.red:Colors.teal
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        )
      ],
    );
  }
}