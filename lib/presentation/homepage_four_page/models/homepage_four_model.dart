// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilelist2_item_model.dart';import 'userprofilelist3_item_model.dart';/// This class defines the variables used in the [homepage_four_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageFourModel extends Equatable {HomepageFourModel({this.userprofilelist2ItemList = const [], this.userprofilelist3ItemList = const [], }) {  }

List<Userprofilelist2ItemModel> userprofilelist2ItemList;

List<Userprofilelist3ItemModel> userprofilelist3ItemList;

HomepageFourModel copyWith({List<Userprofilelist2ItemModel>? userprofilelist2ItemList, List<Userprofilelist3ItemModel>? userprofilelist3ItemList, }) { return HomepageFourModel(
userprofilelist2ItemList : userprofilelist2ItemList ?? this.userprofilelist2ItemList,
userprofilelist3ItemList : userprofilelist3ItemList ?? this.userprofilelist3ItemList,
); } 
@override List<Object?> get props => [userprofilelist2ItemList,userprofilelist3ItemList];
 }
