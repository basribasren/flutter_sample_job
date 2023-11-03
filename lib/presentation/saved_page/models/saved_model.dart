// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'savedlist_item_model.dart';/// This class defines the variables used in the [saved_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SavedModel extends Equatable {SavedModel({this.savedlistItemList = const []}) {  }

List<SavedlistItemModel> savedlistItemList;

SavedModel copyWith({List<SavedlistItemModel>? savedlistItemList}) { return SavedModel(
savedlistItemList : savedlistItemList ?? this.savedlistItemList,
); } 
@override List<Object?> get props => [savedlistItemList];
 }
