import '../saved_page/widgets/savedlist_item_widget.dart';
import 'bloc/saved_bloc.dart';
import 'models/saved_model.dart';
import 'models/savedlist_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SavedPage extends StatefulWidget {
  const SavedPage({Key? key})
      : super(
          key: key,
        );

  @override
  SavedPageState createState() => SavedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SavedBloc>(
      create: (context) => SavedBloc(SavedState(
        savedModelObj: SavedModel(),
      ))
        ..add(SavedInitialEvent()),
      child: SavedPage(),
    );
  }
}

class SavedPageState extends State<SavedPage>
    with AutomaticKeepAliveClientMixin<SavedPage> {
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
              SizedBox(height: 36.v),
              _buildSavedList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSavedList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<SavedBloc, SavedState, SavedModel?>(
        selector: (state) => state.savedModelObj,
        builder: (context, savedModelObj) {
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
            itemCount: savedModelObj?.savedlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              SavedlistItemModel model =
                  savedModelObj?.savedlistItemList[index] ??
                      SavedlistItemModel();
              return SavedlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
