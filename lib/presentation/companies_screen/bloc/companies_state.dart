// ignore_for_file: must_be_immutable

part of 'companies_bloc.dart';

/// Represents the state of Companies in the application.
class CompaniesState extends Equatable {
  CompaniesState({this.companiesModelObj});

  CompaniesModel? companiesModelObj;

  @override
  List<Object?> get props => [
        companiesModelObj,
      ];
  CompaniesState copyWith({CompaniesModel? companiesModelObj}) {
    return CompaniesState(
      companiesModelObj: companiesModelObj ?? this.companiesModelObj,
    );
  }
}
