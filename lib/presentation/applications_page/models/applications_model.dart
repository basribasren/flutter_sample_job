// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'applicationslist_item_model.dart';/// This class defines the variables used in the [applications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ApplicationsModel extends Equatable {ApplicationsModel({this.applicationslistItemList = const []}) {  }

List<ApplicationslistItemModel> applicationslistItemList;

ApplicationsModel copyWith({List<ApplicationslistItemModel>? applicationslistItemList}) { return ApplicationsModel(
applicationslistItemList : applicationslistItemList ?? this.applicationslistItemList,
); } 
@override List<Object?> get props => [applicationslistItemList];
 }
