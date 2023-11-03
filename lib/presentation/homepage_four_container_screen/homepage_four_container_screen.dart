import 'bloc/homepage_four_container_bloc.dart';import 'models/homepage_four_container_model.dart';import 'package:basri_s_application5/core/app_export.dart';import 'package:basri_s_application5/presentation/homepage_four_page/homepage_four_page.dart';import 'package:basri_s_application5/presentation/notifications_page/notifications_page.dart';import 'package:basri_s_application5/presentation/saved_tab_container_page/saved_tab_container_page.dart';import 'package:basri_s_application5/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class HomepageFourContainerScreen extends StatelessWidget {HomepageFourContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomepageFourContainerBloc>(create: (context) => HomepageFourContainerBloc(HomepageFourContainerState(homepageFourContainerModelObj: HomepageFourContainerModel()))..add(HomepageFourContainerInitialEvent()), child: HomepageFourContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HomepageFourContainerBloc, HomepageFourContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homepageFourPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home31: return AppRoutes.homepageFourPage; case BottomBarEnum.Message61: return "/"; case BottomBarEnum.Bookmark1: return AppRoutes.savedTabContainerPage; case BottomBarEnum.Category11: return AppRoutes.notificationsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homepageFourPage: return HomepageFourPage.builder(context); case AppRoutes.savedTabContainerPage: return SavedTabContainerPage.builder(context); case AppRoutes.notificationsPage: return NotificationsPage.builder(context); default: return DefaultWidget();} } 
 }
