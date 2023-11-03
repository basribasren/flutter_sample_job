import '../categories_screen/widgets/categorygrid_item_widget.dart';import '../categories_screen/widgets/userprofilegrid_item_widget.dart';import 'bloc/categories_bloc.dart';import 'models/categories_model.dart';import 'models/categorygrid_item_model.dart';import 'models/userprofilegrid_item_model.dart';import 'package:basri_s_application5/core/app_export.dart';import 'package:basri_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle_two.dart';import 'package:basri_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class CategoriesScreen extends StatelessWidget {const CategoriesScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<CategoriesBloc>(create: (context) => CategoriesBloc(CategoriesState(categoriesModelObj: CategoriesModel()))..add(CategoriesInitialEvent()), child: CategoriesScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 32.v), child: Column(children: [_buildComponentThirtySix(context), SizedBox(height: 16.v), _buildCategoryGrid(context), SizedBox(height: 39.v), _buildComponentThirtySix(context), SizedBox(height: 17.v), _buildUserProfileGrid(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 46.v, leadingWidth: 42.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 18.h, top: 6.v, bottom: 6.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_categories".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildCategoryGrid(BuildContext context) { return BlocSelector<CategoriesBloc, CategoriesState, CategoriesModel?>(selector: (state) => state.categoriesModelObj, builder: (context, categoriesModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 123.v, crossAxisCount: 2, mainAxisSpacing: 17.h, crossAxisSpacing: 17.h), physics: NeverScrollableScrollPhysics(), itemCount: categoriesModelObj?.categorygridItemList.length ?? 0, itemBuilder: (context, index) {CategorygridItemModel model = categoriesModelObj?.categorygridItemList[index] ?? CategorygridItemModel(); return CategorygridItemWidget(model);});}); } 
/// Section Widget
Widget _buildUserProfileGrid(BuildContext context) { return BlocSelector<CategoriesBloc, CategoriesState, CategoriesModel?>(selector: (state) => state.categoriesModelObj, builder: (context, categoriesModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 123.v, crossAxisCount: 2, mainAxisSpacing: 17.h, crossAxisSpacing: 17.h), physics: NeverScrollableScrollPhysics(), itemCount: categoriesModelObj?.userprofilegridItemList.length ?? 0, itemBuilder: (context, index) {UserprofilegridItemModel model = categoriesModelObj?.userprofilegridItemList[index] ?? UserprofilegridItemModel(); return UserprofilegridItemWidget(model);});}); } 
/// Common widget
Widget _buildComponentThirtySix(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_trending".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_see_all".tr, style: CustomTextStyles.bodyMediumGray500_1))]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
