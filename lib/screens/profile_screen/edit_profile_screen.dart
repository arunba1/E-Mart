import 'package:e_mart/consts.dart';
import 'package:e_mart/controllers/profile_controller.dart';
import 'package:e_mart/widget_common/bg_widget.dart';
import 'package:e_mart/widget_common/custom_textfields.dart';
import 'package:e_mart/widget_common/our_button.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imgProfile2,
            width: 100,
            fit: BoxFit.cover,
          ).box.roundedFull.clip(Clip.antiAlias).make(),
          10.heightBox,
          ourButton(
              color: redColor,
              onPress: () {
                //Get.find<ProfileController>().changeImage(context);
              },
              textColor: whiteColor,
              title: "Change"),
          Divider(),
          20.heightBox,
          customTextField(hint: nameHint, title: name, ispass: false),
          customTextField(hint: passwordHint, title: password, ispass: true),
          20.heightBox,
          SizedBox(
            width: context.screenWidth - 60,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: "Save"),
          ),
        ],
      )
          .box
          .shadowSm
          .white
          .padding(const EdgeInsets.all(16))
          .margin(const EdgeInsets.only(top: 50, left: 12, right: 12))
          .rounded
          .make(),
    ));
  }
}
