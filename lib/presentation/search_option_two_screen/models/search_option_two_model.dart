// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchoptionlist_item_model.dart';/// This class defines the variables used in the [search_option_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchOptionTwoModel extends Equatable {SearchOptionTwoModel({this.searchoptionlistItemList = const []}) {  }

List<SearchoptionlistItemModel> searchoptionlistItemList;

SearchOptionTwoModel copyWith({List<SearchoptionlistItemModel>? searchoptionlistItemList}) { return SearchOptionTwoModel(
searchoptionlistItemList : searchoptionlistItemList ?? this.searchoptionlistItemList,
); } 
@override List<Object?> get props => [searchoptionlistItemList];
 }
