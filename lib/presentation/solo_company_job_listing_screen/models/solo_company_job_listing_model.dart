// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilelist6_item_model.dart';/// This class defines the variables used in the [solo_company_job_listing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SoloCompanyJobListingModel extends Equatable {SoloCompanyJobListingModel({this.userprofilelist6ItemList = const []}) {  }

List<Userprofilelist6ItemModel> userprofilelist6ItemList;

SoloCompanyJobListingModel copyWith({List<Userprofilelist6ItemModel>? userprofilelist6ItemList}) { return SoloCompanyJobListingModel(
userprofilelist6ItemList : userprofilelist6ItemList ?? this.userprofilelist6ItemList,
); } 
@override List<Object?> get props => [userprofilelist6ItemList];
 }
