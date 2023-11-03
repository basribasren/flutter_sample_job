import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 56.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 1.v,
          width: 327.h,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 34.v,
            right: 24.h,
          ),
          decoration: BoxDecoration(
            color: appTheme.gray400,
          ),
        );
      case Style.bgFill_2:
        return Container(
          height: 50.v,
          width: 341.h,
          margin: EdgeInsets.only(
            left: 13.h,
            right: 21.h,
          ),
          decoration: BoxDecoration(
            color: appTheme.gray50,
          ),
        );
      case Style.bgFill:
        return Container(
          height: 36.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray50,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgFill_2,
  bgFill,
}
