// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget2_item_widget] screen.
class Widget2ItemModel extends Equatable {Widget2ItemModel({this.button, this.isSelected, }) { button = button  ?? "Portfolio Link";isSelected = isSelected  ?? false; }

String? button;

bool? isSelected;

Widget2ItemModel copyWith({String? button, bool? isSelected, }) { return Widget2ItemModel(
button : button ?? this.button,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [button,isSelected];
 }
