import 'package:flutter/material.dart';
import 'package:food_delivery/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimension.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print(Get.context!.height);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: Dimension.width20, right: Dimension.width20),
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
                            color: const Color.fromRGBO(0, 0, 0, 0.541),
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ])
                      ],
                    ),
                    Center(
                      child: Container(
                        width: Dimension.width45,
                        height: Dimension.height45,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: Dimension.iconSize24,
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
            Expanded(
              child: SingleChildScrollView(
                child: const FoodPageBody(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
