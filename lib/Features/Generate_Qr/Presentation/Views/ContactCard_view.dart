import 'package:flutter/material.dart';
import 'package:qr_code/Core/Helpers/BuildCircle_Method.dart';
import 'package:qr_code/Core/Widgets/CustomAppBarCard.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/ContactCard_Container.dart';

class ContactcardView extends StatelessWidget {
  const ContactcardView({super.key});

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff525252),
      body: SingleChildScrollView(
        child: SizedBox(
          height:
              heightScreen, // to prevent error for putting stack inside Column
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -40,
                right: -140,
                child: buildCircle(
                  430,
                  Color(0xff4F4F4F),
                ), // Method for Building circle
              ),
              Positioned(
                bottom: -40,
                left: -150,
                child: buildCircle(400, Color(0xff4F4F4F)),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: Customappbarcard(text: "Contact"),
              ),
              Positioned(
                top: 120,
                child: ContactcardContainer(GenerateQr_Onpressed: (){})
              ),
            ],
          ),
        ),
      ),
    );
  }
}
