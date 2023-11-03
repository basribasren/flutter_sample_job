import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/close_item_model.dart';import 'package:basri_s_application5/presentation/seacrh_filter_screen/models/seacrh_filter_model.dart';part 'seacrh_filter_event.dart';part 'seacrh_filter_state.dart';/// A bloc that manages the state of a SeacrhFilter according to the event that is dispatched to it.
class SeacrhFilterBloc extends Bloc<SeacrhFilterEvent, SeacrhFilterState> {SeacrhFilterBloc(SeacrhFilterState initialState) : super(initialState) { on<SeacrhFilterInitialEvent>(_onInitialize); on<UpdateChipViewEvent>(_updateChipView); }

_onInitialize(SeacrhFilterInitialEvent event, Emitter<SeacrhFilterState> emit, ) async  { emit(state.copyWith(seacrhFilterModelObj: state.seacrhFilterModelObj?.copyWith(closeItemList: fillCloseItemList()))); } 
_updateChipView(UpdateChipViewEvent event, Emitter<SeacrhFilterState> emit, ) { List<CloseItemModel> newList = List<CloseItemModel>.from(state.seacrhFilterModelObj!.closeItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(seacrhFilterModelObj: state.seacrhFilterModelObj?.copyWith(closeItemList: newList))); } 
List<CloseItemModel> fillCloseItemList() { return List.generate(6, (index) => CloseItemModel()); } 
 }
