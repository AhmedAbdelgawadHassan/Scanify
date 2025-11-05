// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/Utils/App_Assets.dart';
import 'package:qr_code/Features/Generate_Qr/Data/Models/CardClass.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Widgets/customCard.dart';

class Gridview_Cards extends StatelessWidget {
   Gridview_Cards({super.key});
 

  @override
  Widget build(BuildContext context) {
     List <Cardclass> cards = [
    Cardclass(Text: "Text", image: AppAssets.TextIcone2, onPressed: (){GoRouter.of(context).push('/Text');}),
    Cardclass(Text: "Website", image: AppAssets.WesiteIcone2, onPressed: (){GoRouter.of(context).push('/Website');}),
    Cardclass(Text: "WI-FI", image: AppAssets.WIFIcon2, onPressed: (){GoRouter.of(context).push('/Wifi');}),
    Cardclass(Text: "Event", image: AppAssets.EventIcon2, onPressed: (){GoRouter.of(context).push('/Event');}),
    Cardclass(Text: "Contact", image: AppAssets.ContactsIcon2, onPressed: (){GoRouter.of(context).push('/Contact');}),
    Cardclass(Text: "Business", image: AppAssets.BusinessIcon2, onPressed: (){GoRouter.of(context).push('/Business');}),
    Cardclass(Text: "Location", image: AppAssets.LocationIcon2, onPressed: (){GoRouter.of(context).push('/Location');}),
    Cardclass(Text: "Whatsapp", image: AppAssets.WhatsappIcon2, onPressed: (){GoRouter.of(context).push('/Whatsapp');}),
    Cardclass(Text: "Email", image: AppAssets.EmailIcon2, onPressed: (){GoRouter.of(context).push('/Email');}),
    Cardclass(Text: "Twitter", image: AppAssets.TwitterIcon2, onPressed: (){GoRouter.of(context).push('/Twitter');}),
    Cardclass(Text: "Instagram", image: AppAssets.InstagramIcon2, onPressed: (){GoRouter.of(context).push('/Instagram');}),
    Cardclass(Text: "Telephone", image: AppAssets.TelephoneIcon2, onPressed: (){GoRouter.of(context).push('/Telephone');}),
  ];
    return   Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 35
                    ),
                    itemBuilder:
                        (context, index) => Customcard(
                          cardclass: cards[index],
                        ),
                        itemCount: cards.length,
                  ),
                );
  }
}