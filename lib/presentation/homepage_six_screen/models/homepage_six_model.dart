// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'jobslider_item_model.dart';import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [homepage_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageSixModel extends Equatable {HomepageSixModel({this.jobsliderItemList = const [], this.userprofile1ItemList = const [], }) {  }

List<JobsliderItemModel> jobsliderItemList;

List<Userprofile1ItemModel> userprofile1ItemList;

HomepageSixModel copyWith({List<JobsliderItemModel>? jobsliderItemList, List<Userprofile1ItemModel>? userprofile1ItemList, }) { return HomepageSixModel(
jobsliderItemList : jobsliderItemList ?? this.jobsliderItemList,
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
); } 
@override List<Object?> get props => [jobsliderItemList,userprofile1ItemList];
 }
