import 'administration1_item_model.dart';/// This class is used in the [jobslider_item_widget] screen.
class JobsliderItemModel {JobsliderItemModel({this.administration1ItemList, this.id, }) { administration1ItemList = administration1ItemList  ?? List.generate(3,(index) =>Administration1ItemModel());id = id  ?? ""; }

List<Administration1ItemModel>? administration1ItemList;

String? id;

 }
