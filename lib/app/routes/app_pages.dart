import 'package:get/get.dart';

import '../modules/alarmSettings/bindings/alarm_settings_binding.dart';
import '../modules/alarmSettings/views/alarm_settings_view.dart';
import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/exercise/bindings/exercise_binding.dart';
import '../modules/exercise/views/exercise_view.dart';
import '../modules/exerciseDetails2/bindings/exercise_details2_binding.dart';
import '../modules/exerciseDetails2/views/exercise_details2_view.dart';
import '../modules/exercise_details/bindings/exercise_details_binding.dart';
import '../modules/exercise_details/views/exercise_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/logo_page/bindings/logo_page_binding.dart';
import '../modules/logo_page/views/logo_page_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/statistics/bindings/statistics_binding.dart';
import '../modules/statistics/views/statistics_view.dart';
import '../modules/toRead/bindings/to_read_binding.dart';
import '../modules/toRead/views/to_read_view.dart';
import '../modules/toRead1/bindings/to_read1_binding.dart';
import '../modules/toRead1/views/to_read1_view.dart';
import '../modules/toRead10/bindings/to_read10_binding.dart';
import '../modules/toRead10/views/to_read10_view.dart';
import '../modules/toRead11/bindings/to_read11_binding.dart';
import '../modules/toRead11/views/to_read11_view.dart';
import '../modules/toRead12/bindings/to_read12_binding.dart';
import '../modules/toRead12/views/to_read12_view.dart';
import '../modules/toRead13/bindings/to_read13_binding.dart';
import '../modules/toRead13/views/to_read13_view.dart';
import '../modules/toRead2/bindings/to_read2_binding.dart';
import '../modules/toRead2/views/to_read2_view.dart';
import '../modules/toRead3/bindings/to_read3_binding.dart';
import '../modules/toRead3/views/to_read3_view.dart';
import '../modules/toRead4/bindings/to_read4_binding.dart';
import '../modules/toRead4/views/to_read4_view.dart';
import '../modules/toRead5/bindings/to_read5_binding.dart';
import '../modules/toRead5/views/to_read5_view.dart';
import '../modules/toRead6/bindings/to_read6_binding.dart';
import '../modules/toRead6/views/to_read6_view.dart';
import '../modules/toRead7/bindings/to_read7_binding.dart';
import '../modules/toRead7/views/to_read7_view.dart';
import '../modules/toRead8/bindings/to_read8_binding.dart';
import '../modules/toRead8/views/to_read8_view.dart';
import '../modules/toRead9/bindings/to_read9_binding.dart';
import '../modules/toRead9/views/to_read9_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGO_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      // children: [
      //   GetPage(
      //     name: _Paths.HOME,
      //     page: () => HomeView(),
      //     binding: HomeBinding(),
      //   ),
      // ],
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => const AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.LOGO_PAGE,
      page: () => const LogoPageView(),
      binding: LogoPageBinding(),
    ),
    GetPage(
      name: _Paths.EXERCISE,
      page: () => ExerciseView(),
      binding: ExerciseBinding(),
    ),
    GetPage(
      name: _Paths.TO_READ,
      page: () => ToReadView(),
      binding: ToReadBinding(),
    ),
    GetPage(
      name: _Paths.STATISTICS,
      page: () => StatisticsView(),
      binding: StatisticsBinding(),
    ),
    GetPage(
      name: _Paths.TO_READ1,
      page: () => ToRead1View(),
      binding: ToRead1Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ2,
      page: () => ToRead2View(),
      binding: ToRead2Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ3,
      page: () => ToRead3View(),
      binding: ToRead3Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ4,
      page: () => ToRead4View(),
      binding: ToRead4Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ5,
      page: () => ToRead5View(),
      binding: ToRead5Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ6,
      page: () => ToRead6View(),
      binding: ToRead6Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ7,
      page: () => ToRead7View(),
      binding: ToRead7Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ8,
      page: () => ToRead8View(),
      binding: ToRead8Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ9,
      page: () => ToRead9View(),
      binding: ToRead9Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ10,
      page: () => ToRead10View(),
      binding: ToRead10Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ11,
      page: () => ToRead11View(),
      binding: ToRead11Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ12,
      page: () => ToRead12View(),
      binding: ToRead12Binding(),
    ),
    GetPage(
      name: _Paths.TO_READ13,
      page: () => ToRead13View(),
      binding: ToRead13Binding(),
    ),
    GetPage(
      name: _Paths.ALARM_SETTINGS,
      page: () => const AlarmSettingsView(),
      binding: AlarmSettingsBinding(),
    ),
    GetPage(
      name: _Paths.EXERCISE_DETAILS,
      page: () => ExerciseDetailsView(),
      binding: ExerciseDetailsBinding(),
    ),
    GetPage(
      name: _Paths.EXERCISE_DETAILS2,
      page: () => const ExerciseDetails2View(),
      binding: ExerciseDetails2Binding(),
    ),
  ];
}
