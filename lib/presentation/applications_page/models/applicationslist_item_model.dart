import '../../../core/app_export.dart';/// This class is used in the [applicationslist_item_widget] screen.
class ApplicationslistItemModel {ApplicationslistItemModel({this.jrExecutive, this.jrExecutive1, this.price, this.burgerKing, this.losAngelsUS, this.fullTime, this.id, }) { jrExecutive = jrExecutive  ?? ImageConstant.imgGoogle;jrExecutive1 = jrExecutive1  ?? "Jr Executive";price = price  ?? "115,000/y";burgerKing = burgerKing  ?? "Google";losAngelsUS = losAngelsUS  ?? "Los Angels, US";fullTime = fullTime  ?? "Full-Time";id = id  ?? ""; }

String? jrExecutive;

String? jrExecutive1;

String? price;

String? burgerKing;

String? losAngelsUS;

String? fullTime;

String? id;

 }
