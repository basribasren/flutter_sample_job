// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'productdesigner_item_model.dart';import 'worldwide_item_model.dart';import 'any_item_model.dart';import 'any2_item_model.dart';/// This class defines the variables used in the [job_preferences_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class JobPreferencesTwoModel extends Equatable {JobPreferencesTwoModel({this.productdesignerItemList = const [], this.worldwideItemList = const [], this.anyItemList = const [], this.any2ItemList = const [], }) {  }

List<ProductdesignerItemModel> productdesignerItemList;

List<WorldwideItemModel> worldwideItemList;

List<AnyItemModel> anyItemList;

List<Any2ItemModel> any2ItemList;

JobPreferencesTwoModel copyWith({List<ProductdesignerItemModel>? productdesignerItemList, List<WorldwideItemModel>? worldwideItemList, List<AnyItemModel>? anyItemList, List<Any2ItemModel>? any2ItemList, }) { return JobPreferencesTwoModel(
productdesignerItemList : productdesignerItemList ?? this.productdesignerItemList,
worldwideItemList : worldwideItemList ?? this.worldwideItemList,
anyItemList : anyItemList ?? this.anyItemList,
any2ItemList : any2ItemList ?? this.any2ItemList,
); } 
@override List<Object?> get props => [productdesignerItemList,worldwideItemList,anyItemList,any2ItemList];
 }
