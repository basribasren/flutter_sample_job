// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilelist4_item_model.dart';import 'userprofilelist5_item_model.dart';/// This class defines the variables used in the [homepage_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageFiveModel extends Equatable {HomepageFiveModel({this.userprofilelist4ItemList = const [], this.userprofilelist5ItemList = const [], }) {  }

List<Userprofilelist4ItemModel> userprofilelist4ItemList;

List<Userprofilelist5ItemModel> userprofilelist5ItemList;

HomepageFiveModel copyWith({List<Userprofilelist4ItemModel>? userprofilelist4ItemList, List<Userprofilelist5ItemModel>? userprofilelist5ItemList, }) { return HomepageFiveModel(
userprofilelist4ItemList : userprofilelist4ItemList ?? this.userprofilelist4ItemList,
userprofilelist5ItemList : userprofilelist5ItemList ?? this.userprofilelist5ItemList,
); } 
@override List<Object?> get props => [userprofilelist4ItemList,userprofilelist5ItemList];
 }
