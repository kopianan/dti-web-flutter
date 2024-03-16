import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:community_charts_flutter/community_charts_flutter.dart'
    as charts;
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/domain/contact_us/contact_us_model.dart';
import 'package:dti_web/domain/core/chart_filter_model.dart';
import 'package:dti_web/domain/core/customer_model.dart';
import 'package:dti_web/domain/core/search_type.dart';
import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/feedback/feedback_model.dart';
import 'package:dti_web/presentation/corporate/stat/admin_statistic_page.dart';
import 'package:dti_web/utils/chart_util.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/utils.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'admin_data_state.dart';
part 'admin_data_cubit.freezed.dart';

@injectable
class AdminDataCubit extends Cubit<AdminDataState> {
  AdminDataCubit() : super(AdminDataState.initial());

  void searchKeywoard(String keywoard) {
    emit(state.copyWith(searchKeywoard: keywoard));
  }

  void setSearchType(int index) {
    late SearchType type;
    if (index == 0) {
      type = SearchType.application;
    } else if (index == 1) {
      type = SearchType.customer;
    } else if (index == 2) {
      type = SearchType.feedback;
    } else {
      type = SearchType.contactUse;
    }
    emit(state.copyWith(searchType: type));
  }

  void setApplicationData(List<SimpleVisaModel> visa) async {
    emit(state.copyWith(application: visa));
  }

  void setContactUsData(List<ContactUsModel> contacts) async {
    emit(state.copyWith(contacts: contacts));
  }

  void setCustomerData(List<CustomerModel> customers) async {
    emit(state.copyWith(users: customers));
  }

  void setFeedbackData(List<FeedbackModel> feedbacks) async {
    emit(state.copyWith(feedbacks: feedbacks));
  }

  void setActiveFilter(ChartFilterModel model) {
    final updatedModel = model.copyWith(active: true);

    var chartsFilter = state.usersChartFilter;

    chartsFilter =
        chartsFilter.map((filter) => filter.copyWith(active: false)).toList();

    int indexToUpdate =
        chartsFilter.indexWhere((element) => element.label == model.label);

    chartsFilter[indexToUpdate] = updatedModel;

    emit(state.copyWith(usersChartFilter: chartsFilter));
  }

  void setActiveFilterApplication(ChartFilterModel model) {
    final updatedModel = model.copyWith(active: true);

    var chartsFilter = state.appsChartFilter;

    chartsFilter =
        chartsFilter.map((filter) => filter.copyWith(active: false)).toList();

    int indexToUpdate =
        chartsFilter.indexWhere((element) => element.label == model.label);

    chartsFilter[indexToUpdate] = updatedModel;

    emit(state.copyWith(appsChartFilter: chartsFilter));
  }
}
