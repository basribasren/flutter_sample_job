// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [it_item_widget] screen.
class ItItemModel extends Equatable {ItItemModel({this.it, this.isSelected, }) { it = it  ?? "IT";isSelected = isSelected  ?? false; }

String? it;

bool? isSelected;

ItItemModel copyWith({String? it, bool? isSelected, }) { return ItItemModel(
it : it ?? this.it,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [it,isSelected];
 }
