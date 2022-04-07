import 'package:flutter/material.dart';
import 'package:food_delivery/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 5, bottom: 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "India",
                          color: AppColors.mainColor,
                          size: 30,
                        ),
                        Row(children: [
                          const SizedBox(
                            width: 5,
                          ),
                          SmallText(
                            text: "Uttarkhand",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down)
                        ])
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.mainColor),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const FoodPageBody()
          ],
        ),
      ),
    );
  }
}
