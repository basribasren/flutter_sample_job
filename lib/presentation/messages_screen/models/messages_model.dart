// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'messagelist_item_model.dart';/// This class defines the variables used in the [messages_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {MessagesModel({this.messagelistItemList = const []}) {  }

List<MessagelistItemModel> messagelistItemList;

MessagesModel copyWith({List<MessagelistItemModel>? messagelistItemList}) { return MessagesModel(
messagelistItemList : messagelistItemList ?? this.messagelistItemList,
); } 
@override List<Object?> get props => [messagelistItemList];
 }
