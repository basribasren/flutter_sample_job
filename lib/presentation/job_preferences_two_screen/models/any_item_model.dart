// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [any_item_widget] screen.
class AnyItemModel extends Equatable {AnyItemModel({this.any, this.isSelected, }) { any = any  ?? "Any";isSelected = isSelected  ?? false; }

String? any;

bool? isSelected;

AnyItemModel copyWith({String? any, bool? isSelected, }) { return AnyItemModel(
any : any ?? this.any,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [any,isSelected];
 }
