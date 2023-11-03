// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'close_item_model.dart';/// This class defines the variables used in the [seacrh_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeacrhFilterModel extends Equatable {SeacrhFilterModel({this.closeItemList = const []}) {  }

List<CloseItemModel> closeItemList;

SeacrhFilterModel copyWith({List<CloseItemModel>? closeItemList}) { return SeacrhFilterModel(
closeItemList : closeItemList ?? this.closeItemList,
); } 
@override List<Object?> get props => [closeItemList];
 }
