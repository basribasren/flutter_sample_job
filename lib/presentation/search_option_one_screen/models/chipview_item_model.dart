// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [chipview_item_widget] screen.
class ChipviewItemModel extends Equatable {ChipviewItemModel({this.designer, this.isSelected, }) { designer = designer  ?? "Designer";isSelected = isSelected  ?? false; }

String? designer;

bool? isSelected;

ChipviewItemModel copyWith({String? designer, bool? isSelected, }) { return ChipviewItemModel(
designer : designer ?? this.designer,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [designer,isSelected];
 }
