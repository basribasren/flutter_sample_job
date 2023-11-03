// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [any2_item_widget] screen.
class Any2ItemModel extends Equatable {Any2ItemModel({this.any, this.isSelected, }) { any = any  ?? "Any";isSelected = isSelected  ?? false; }

String? any;

bool? isSelected;

Any2ItemModel copyWith({String? any, bool? isSelected, }) { return Any2ItemModel(
any : any ?? this.any,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [any,isSelected];
 }
