import 'package:e_mart/consts.dart';
import 'package:e_mart/screens/profile_screen/components/details_card.dart';
import 'package:e_mart/widget_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            //edit profile button
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.edit,color: whiteColor,)).onTap((){}),


            //users detail section
            Row(
              children: [
                Image.asset(
                  imgProfile2,
                  width: 100,
                  fit: BoxFit.cover,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    "customer@gmail.com".text.white.make(),
                  ],
                )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: whiteColor,
                    )
                  ),
                  onPressed: (){}, 
                  child: logout.text.fontFamily(semibold).white.make()
                  ),
              ],
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  detailCard(count: "00", title: "in your cart", width: context.screenWidth/3.2),
  detailCard(count: "32", title: "in your wishlist", width: context.screenWidth/3.2),
  detailCard(count: "675", title: "your orders", width: context.screenWidth/3.2),
],
            ),
          ],


        ),
      )),
    ));
  }
}
