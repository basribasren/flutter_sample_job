import '../../../core/app_export.dart';/// This class is used in the [savedlist_item_widget] screen.
class SavedlistItemModel {SavedlistItemModel({this.uXIntern, this.jrExecutive, this.price, this.burgerKing, this.losAngelsUS, this.fullTime, this.id, }) { uXIntern = uXIntern  ?? ImageConstant.imgImage4;jrExecutive = jrExecutive  ?? "UX Intern";price = price  ?? "88,000/y";burgerKing = burgerKing  ?? "Spotify";losAngelsUS = losAngelsUS  ?? "Los Angels, US";fullTime = fullTime  ?? "Full-Time";id = id  ?? ""; }

String? uXIntern;

String? jrExecutive;

String? price;

String? burgerKing;

String? losAngelsUS;

String? fullTime;

String? id;

 }
