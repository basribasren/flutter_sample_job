// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'jobtypeone_item_model.dart';/// This class defines the variables used in the [job_type_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class JobTypeOneModel extends Equatable {JobTypeOneModel({this.jobtypeoneItemList = const []}) {  }

List<JobtypeoneItemModel> jobtypeoneItemList;

JobTypeOneModel copyWith({List<JobtypeoneItemModel>? jobtypeoneItemList}) { return JobTypeOneModel(
jobtypeoneItemList : jobtypeoneItemList ?? this.jobtypeoneItemList,
); } 
@override List<Object?> get props => [jobtypeoneItemList];
 }
