// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [productdesigner_item_widget] screen.
class ProductdesignerItemModel extends Equatable {ProductdesignerItemModel({this.productDesigner, this.isSelected, }) { productDesigner = productDesigner  ?? "Product Designer";isSelected = isSelected  ?? false; }

String? productDesigner;

bool? isSelected;

ProductdesignerItemModel copyWith({String? productDesigner, bool? isSelected, }) { return ProductdesignerItemModel(
productDesigner : productDesigner ?? this.productDesigner,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [productDesigner,isSelected];
 }
