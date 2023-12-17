import 'package:emart_app/views/category_screen/items_details.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
              children: List.generate(6, (index) => "window dor".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered().box.white.rounded.size(120, 60).margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
              ),
            ),

           // items container

           20.heightBox,
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 8, crossAxisSpacing: 8), itemBuilder: (context, index) {
              return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Image.asset(
                          imgP5,
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        // const Spacer(),
                        10.heightBox, //product description or Name 13:41 continou
                        "product name here".text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "\$50".text.color(Colors.red).fontFamily(bold).make(),
                      ],
                    ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(const EdgeInsets.all(12))
                    .make().onTap(() {
                      Get.to (() => const ItemsDetails(title: "Dummy item"));
                    });
                  }) 
          ),

          
          ],

          ),
        ),
      ),
  );
  }
}