// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';/// This class is used in the [jobtypeone_item_widget] screen.
class JobtypeoneItemModel extends Equatable {JobtypeoneItemModel({this.curveOne, this.radioGroup, this.id, }) { curveOne = curveOne  ?? ImageConstant.imgCurve15;radioGroup = radioGroup  ?? "";id = id  ?? ""; }

String? curveOne;

String? radioGroup;

String? id;

JobtypeoneItemModel copyWith({String? curveOne, String? radioGroup, String? id, }) { return JobtypeoneItemModel(
curveOne : curveOne ?? this.curveOne,
radioGroup : radioGroup ?? this.radioGroup,
id : id ?? this.id,
); } 
@override List<Object?> get props => [curveOne,radioGroup,id];
 }
