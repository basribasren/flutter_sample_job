import '../search_option_two_screen/widgets/searchoptionlist_item_widget.dart';
import 'bloc/search_option_two_bloc.dart';
import 'models/search_option_two_model.dart';
import 'models/searchoptionlist_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:basri_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchOptionTwoScreen extends StatelessWidget {
  const SearchOptionTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchOptionTwoBloc>(
      create: (context) => SearchOptionTwoBloc(SearchOptionTwoState(
        searchOptionTwoModelObj: SearchOptionTwoModel(),
      ))
        ..add(SearchOptionTwoInitialEvent()),
      child: SearchOptionTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              _buildSearchRow(context),
              SizedBox(height: 38.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_recent_searches".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 14.v),
              _buildSearchOptionList(context),
              SizedBox(height: 31.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_recently_viewed".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 13.v),
              _buildProductManagerRow(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowRight,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 16.v,
          bottom: 14.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: BlocSelector<SearchOptionTwoBloc, SearchOptionTwoState,
              TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return CustomSearchView(
                controller: searchController,
                hintText: "msg_search_a_job_or".tr,
              );
            },
          ),
        ),
        Container(
          height: 52.v,
          width: 48.h,
          margin: EdgeInsets.only(left: 16.h),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder13,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgFilter5,
            height: 26.adaptSize,
            width: 26.adaptSize,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchOptionList(BuildContext context) {
    return BlocSelector<SearchOptionTwoBloc, SearchOptionTwoState,
        SearchOptionTwoModel?>(
      selector: (state) => state.searchOptionTwoModelObj,
      builder: (context, searchOptionTwoModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount:
              searchOptionTwoModelObj?.searchoptionlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            SearchoptionlistItemModel model =
                searchOptionTwoModelObj?.searchoptionlistItemList[index] ??
                    SearchoptionlistItemModel();
            return SearchoptionlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildProductManagerRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage8,
            height: 43.adaptSize,
            width: 43.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              children: [
                _buildBeats(
                  context,
                  beatsLabel: "lbl_product_manager".tr,
                  floridaLabel: "lbl_84_000_y".tr,
                ),
                SizedBox(height: 1.v),
                _buildBeats(
                  context,
                  beatsLabel: "lbl_beats".tr,
                  floridaLabel: "lbl_florida_us".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBeats(
    BuildContext context, {
    required String beatsLabel,
    required String floridaLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: 0.5,
          child: Text(
            beatsLabel,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.53),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            floridaLabel,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.53),
            ),
          ),
        ),
      ],
    );
  }
}
