import '../applications_page/widgets/applicationslist_item_widget.dart';
import 'bloc/applications_bloc.dart';
import 'models/applications_model.dart';
import 'models/applicationslist_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ApplicationsPage extends StatefulWidget {
  const ApplicationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ApplicationsPageState createState() => ApplicationsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ApplicationsBloc>(
      create: (context) => ApplicationsBloc(ApplicationsState(
        applicationsModelObj: ApplicationsModel(),
      ))
        ..add(ApplicationsInitialEvent()),
      child: ApplicationsPage(),
    );
  }
}

class ApplicationsPageState extends State<ApplicationsPage>
    with AutomaticKeepAliveClientMixin<ApplicationsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.bg,
          child: Column(
            children: [
              SizedBox(height: 40.v),
              _buildApplicationsList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplicationsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child:
          BlocSelector<ApplicationsBloc, ApplicationsState, ApplicationsModel?>(
        selector: (state) => state.applicationsModelObj,
        builder: (context, applicationsModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 20.v,
              );
            },
            itemCount:
                applicationsModelObj?.applicationslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              ApplicationslistItemModel model =
                  applicationsModelObj?.applicationslistItemList[index] ??
                      ApplicationslistItemModel();
              return ApplicationslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
