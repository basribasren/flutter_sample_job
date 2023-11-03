import '../messages_screen/widgets/messagelist_item_widget.dart';
import 'bloc/messages_bloc.dart';
import 'models/messagelist_item_model.dart';
import 'models/messages_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesBloc>(
      create: (context) => MessagesBloc(MessagesState(
        messagesModelObj: MessagesModel(),
      ))
        ..add(MessagesInitialEvent()),
      child: MessagesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              width: 327.h,
              child: Column(
                children: [
                  BlocSelector<MessagesBloc, MessagesState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_a_chat_or".tr,
                        hintStyle:
                            CustomTextStyles.bodyMediumOnPrimaryContainer15,
                        contentPadding: EdgeInsets.only(
                          top: 8.v,
                          right: 30.h,
                          bottom: 8.v,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 23.v),
                  _buildMessageList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageList(BuildContext context) {
    return BlocSelector<MessagesBloc, MessagesState, MessagesModel?>(
      selector: (state) => state.messagesModelObj,
      builder: (context, messagesModelObj) {
        return GroupedListView<MessagelistItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: messagesModelObj?.messagelistItemList ?? [],
          groupBy: (element) => element.groupBy!,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 15.v,
                bottom: 5.v,
              ),
              child: Text(
                value,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              ),
            );
          },
          itemBuilder: (context, model) {
            return MessagelistItemWidget(
              model,
            );
          },
          separator: SizedBox(
            height: 8.v,
          ),
        );
      },
    );
  }
}
