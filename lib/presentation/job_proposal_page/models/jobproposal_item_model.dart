import '../../../core/app_export.dart';/// This class is used in the [jobproposal_item_widget] screen.
class JobproposalItemModel {JobproposalItemModel({this.jrExecutive, this.userImage, this.salary, this.companyName, this.location, this.negotiable, this.joiningDate, this.id, }) { jrExecutive = jrExecutive  ?? ImageConstant.imgGoogle;userImage = userImage  ?? "Jr Executive";salary = salary  ?? "115,000/y";companyName = companyName  ?? "Google";location = location  ?? "Los Angels, US";negotiable = negotiable  ?? "Negotiable";joiningDate = joiningDate  ?? "Joining: 13/05/22";id = id  ?? ""; }

String? jrExecutive;

String? userImage;

String? salary;

String? companyName;

String? location;

String? negotiable;

String? joiningDate;

String? id;

 }
