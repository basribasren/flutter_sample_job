// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget_item_model.dart';/// This class defines the variables used in the [resume_portfolio_uploading_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ResumePortfolioUploadingModel extends Equatable {ResumePortfolioUploadingModel({this.widgetItemList = const []}) {  }

List<WidgetItemModel> widgetItemList;

ResumePortfolioUploadingModel copyWith({List<WidgetItemModel>? widgetItemList}) { return ResumePortfolioUploadingModel(
widgetItemList : widgetItemList ?? this.widgetItemList,
); } 
@override List<Object?> get props => [widgetItemList];
 }
