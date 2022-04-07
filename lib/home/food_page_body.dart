import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);
  @override
  State<FoodPageBody> createState() => _FoodPageBody();
}

class _FoodPageBody extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.red : Colors.green,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image/food0.png"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                children: [
                  BigText(text: 'Kurkure Momo'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  color: AppColors.mainColor,
                                  size: 15,
                                )),
                      ),
                      const SizedBox(width: 10),
                      SmallText(text: 'text'),
                      const SizedBox(width: 10),
                      SmallText(text: '11111'),
                      const SizedBox(width: 10),
                      SmallText(text: 'comments'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconAndText(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconColor: AppColors.iconColor1,
                      ),
                      IconAndText(
                        icon: Icons.location_on,
                        text: "1.7km",
                        iconColor: AppColors.mainColor,
                      ),
                      IconAndText(
                        icon: Icons.circle_sharp,
                        text: "32min",
                        iconColor: AppColors.iconColor2,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
