import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_cart.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill)),
      child: Scaffold(
        body: SafeArea(
          child: Column(
          // padding: const EdgeInsets.all(8),
            children: [

              // edit profile buttom
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Align(alignment: Alignment.topRight, child:
                  Icon(Icons.edit, color: whiteColor)).onTap(() { }),
              ),



              //user details button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile2, width: 100, fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.heightBox,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    "Dummy User".text.white.fontFamily(semibold).make(),
              
                    //user id here
                    "hi@samarthmishra.xyz".text.white.make()
                  ],
                  )),
              
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: whiteColor,
                      )),
                  onPressed: (){}, child: logout.text.fontFamily(semibold).white.make())
                ],
              ),
            ),

            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(count: "00", title: "in your cart",width: context.screenWidth / 3.4),
                detailsCard(count: "50", title: "in your wishlist",width: context.screenWidth / 3.4),
                detailsCard(count: "45", title: "your orders",width: context.screenWidth / 3.4),
              ],
            ),

            // Buttons Section

            // 40.heightBox,
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: lightGrey,
                );
              },
              itemCount: profileButtonList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(profileButtonIcon[index],
                  width: 22,),
                  title: profileButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make() 
                  );
              },
            ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),

          ]),
        )),
      );
  }
}