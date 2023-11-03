// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget2_item_model.dart';/// This class defines the variables used in the [resume_portfolio_uploaded_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ResumePortfolioUploadedModel extends Equatable {ResumePortfolioUploadedModel({this.widget2ItemList = const []}) {  }

List<Widget2ItemModel> widget2ItemList;

ResumePortfolioUploadedModel copyWith({List<Widget2ItemModel>? widget2ItemList}) { return ResumePortfolioUploadedModel(
widget2ItemList : widget2ItemList ?? this.widget2ItemList,
); } 
@override List<Object?> get props => [widget2ItemList];
 }
