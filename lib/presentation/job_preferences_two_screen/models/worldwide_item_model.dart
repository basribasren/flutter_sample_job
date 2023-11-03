// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [worldwide_item_widget] screen.
class WorldwideItemModel extends Equatable {WorldwideItemModel({this.worldwide, this.isSelected, }) { worldwide = worldwide  ?? "Worldwide";isSelected = isSelected  ?? false; }

String? worldwide;

bool? isSelected;

WorldwideItemModel copyWith({String? worldwide, bool? isSelected, }) { return WorldwideItemModel(
worldwide : worldwide ?? this.worldwide,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [worldwide,isSelected];
 }
