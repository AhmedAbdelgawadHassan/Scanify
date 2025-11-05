import 'package:go_router/go_router.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/BusinessCard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/ContactCard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/EmailCard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/EventCard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Generate_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/InstgramCard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/LocationCard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/TelephoneCard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Textcard_View.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/TwitterCard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/WIFICard_view.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/WebsiteCard_View.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/WhatsAppCard_view.dart';
import 'package:qr_code/Features/History/Presentation/Views/History_View.dart';
import 'package:qr_code/Features/Home/Presentation/Views/Home_view.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/onboarding_view.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/root.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/splashview.dart';
import 'package:qr_code/Features/Settings/Presentation/Views/Settings_view.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: '/Onboarding1', builder: (context, state) => OnboardingView ()),
    GoRoute(path: '/root', builder: (context, state) =>  Root()),
    GoRoute(path: '/Home', builder: (context, state) => HomeView ()),
    GoRoute(path: '/Generate', builder: (context, state) => const GenerateView ()),
    GoRoute(path: '/History', builder: (context, state) => const HistoryView ()),
    GoRoute(path: '/Text', builder: (context, state) => const TextcardView ()),
    GoRoute(path: '/Website', builder: (context, state) => const WebsitecardView()),
    GoRoute(path: '/Wifi', builder: (context, state) => const WificardView()),
    GoRoute(path: '/Event', builder: (context, state) => const EventcardView()),
    GoRoute(path: '/Contact', builder: (context, state) => const ContactcardView()),
    GoRoute(path: '/Business', builder: (context, state) => const BusinesscardView()),
    GoRoute(path: '/Location', builder: (context, state) => const LocationcardView ()),
    GoRoute(path: '/WhatsApp', builder: (context, state) => const WhatsappcardView ()),
    GoRoute(path: '/Email', builder: (context, state) => const EmailcardView ()),
    GoRoute(path: '/Twitter', builder: (context, state) => const TwittercardView ()),
    GoRoute(path: '/Instagram', builder: (context, state) => const InstgramcardView()),
    GoRoute(path: '/Telephone', builder: (context, state) => const TelephonecardView ()),
    GoRoute(path: '/Settings', builder: (context, state) => const SettingsView()),
    ],
);
