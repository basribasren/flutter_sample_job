// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'chipview_item_model.dart';/// This class defines the variables used in the [search_option_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchOptionOneModel extends Equatable {SearchOptionOneModel({this.chipviewItemList = const []}) {  }

List<ChipviewItemModel> chipviewItemList;

SearchOptionOneModel copyWith({List<ChipviewItemModel>? chipviewItemList}) { return SearchOptionOneModel(
chipviewItemList : chipviewItemList ?? this.chipviewItemList,
); } 
@override List<Object?> get props => [chipviewItemList];
 }
