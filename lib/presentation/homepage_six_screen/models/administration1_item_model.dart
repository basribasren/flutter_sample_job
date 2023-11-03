// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [administration1_item_widget] screen.
class Administration1ItemModel extends Equatable {Administration1ItemModel({this.administration, this.isSelected, }) { administration = administration  ?? "Administration";isSelected = isSelected  ?? false; }

String? administration;

bool? isSelected;

Administration1ItemModel copyWith({String? administration, bool? isSelected, }) { return Administration1ItemModel(
administration : administration ?? this.administration,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [administration,isSelected];
 }
