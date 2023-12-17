import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/home_screen/components/featured_button.dart';
import 'package:emart_app/widgets_common/home_button.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue);
      padding: const EdgeInsets.all(10),
      color: indigo, //color property here
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: indigo, //top box color
            // Border-Radius: BorderRadius.circular(20),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),

          10.heightBox,
          //swipper Brands
          
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                aspectRatio: 16 /9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
              itemCount: slidersList.length, 
              itemBuilder: (context, index) {
                return Image.asset(
                  slidersList[index],
                  fit: BoxFit.fill,
                ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
              }),
            
              10.heightBox,
              // deal button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) => homeButtons(
                  height: context.screenHeight * 0.15,
                  width: context.screenWidth / 2.5,
                  icon: index == 0 ? icTodaysDeal : icFlashDeal,
                  title: index == 0 ? todayDeal : flashsale,
                )),
              ),
              // 2nd swipper
              10.heightBox,
              VxSwiper.builder(
                aspectRatio: 16 /9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
              itemCount: secondSlidersList.length, 
              itemBuilder: (context, index) {
                return Image.asset(
                  secondSlidersList[index],
                  fit: BoxFit.fill,
                ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
              }),
            
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(3, (index) => homeButtons(
                height: context.screenHeight * 0.15,
                width: context.screenWidth /3.5,
                icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                title: index ==0 ? topCategories : index == 1 ? brand : topSellers,
                )),
              ),
            
              20.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: featuredCategories.text.color(whiteColor).size(18).fontFamily(semibold).make()),

                20.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(3, (index) => Column(
                      children: [
                        featuredButton(icon: featuredImage1[index], title: featuredTitles1[index]),
                        10.heightBox,
                        featuredButton(icon: featuredImage2[index], title: featuredTitles2[index]),
                      ],
                    )),
                  ),
                ),

                // Featured Product
                20.heightBox,
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: const BoxDecoration(color: redColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    featuredProduct.text.white.fontFamily(bold).size(18).make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(6, (index) => Column(
                          children: [
                            Image.asset(imgP1, width: 150, fit: BoxFit.cover,
                            ),
                            10.heightBox, //product description or Name 13:41 continou
                            "product name here".text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            "\$50".text.color(Colors.red).fontFamily(bold).make(),
                          ],
                        ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make()),
                      ),
                    ),
                  ],
                  ),
                ),

                  // swipper here
                  10.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 /9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: secondSlidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondSlidersList[index],
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                      }),

                  // all product section
                  20.heightBox,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300),
                  itemBuilder: (context,index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Image.asset(
                          imgP5,
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const Spacer(),
                        10.heightBox, //product description or Name 13:41 continou
                        "product name here".text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "\$50".text.color(Colors.red).fontFamily(bold).make(),
                      ],
                    ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(12)).make();
                  })

                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}