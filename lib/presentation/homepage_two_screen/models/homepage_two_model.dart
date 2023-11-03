// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'it_item_model.dart';import '../../../core/app_export.dart';import 'userprofilelist_item_model.dart';/// This class defines the variables used in the [homepage_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageTwoModel extends Equatable {HomepageTwoModel({this.itItemList = const [], this.userprofilelistItemList = const [], }) {  }

List<ItItemModel> itItemList;

List<UserprofilelistItemModel> userprofilelistItemList;

HomepageTwoModel copyWith({List<ItItemModel>? itItemList, List<UserprofilelistItemModel>? userprofilelistItemList, }) { return HomepageTwoModel(
itItemList : itItemList ?? this.itItemList,
userprofilelistItemList : userprofilelistItemList ?? this.userprofilelistItemList,
); } 
@override List<Object?> get props => [itItemList,userprofilelistItemList];
 }
