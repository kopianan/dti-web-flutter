part of 'admin_data_cubit.dart';

enum TimeRange {
  Last7Days,
  Last1Month,
  Last3Months,
  Last6Months,
  Last1Year,
  All
}

@Freezed(makeCollectionsUnmodifiable: false)
class AdminDataState with _$AdminDataState {
  const AdminDataState._();
  const factory AdminDataState({
    @Default([]) final List<SimpleVisaModel> application,
    @Default([]) final List<ContactUsModel> contacts,
    @Default([]) final List<CustomerModel> users,
    @Default([]) final List<FeedbackModel> feedbacks,
    @Default(SearchType.application) SearchType searchType,
    @Default("") String searchKeywoard,
    required List<ChartFilterModel> usersChartFilter,
    required List<ChartFilterModel> appsChartFilter,
  }) = _AdminDataState;
  factory AdminDataState.initial() => AdminDataState(
        usersChartFilter: ChartUtil().getUserChartFilter(),
        appsChartFilter: ChartUtil().getUserChartFilter(),
      );

  List<CustomerModel> getCustomers() {
    if (searchType == SearchType.customer && searchKeywoard.isNotEmpty) {
      return users.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return users.toList();
  }

  List<FeedbackModel> getFeedbacks() {
    print(searchType);
    if (searchType == SearchType.feedback && searchKeywoard.isNotEmpty) {
      return feedbacks.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return feedbacks.toList();
  }

  List<SimpleVisaModel> getListApplication() {
    if (searchType == SearchType.application && searchKeywoard.isNotEmpty) {
      final filtered = application.where((element) {
        if (element.userName != null) {
          return element.userName!
              .toLowerCase()
              .contains(searchKeywoard.toLowerCase());
        }
        return false;
      }).toList();

      log("TOTAL + ${filtered.length}");

      return filtered;
    }
    log("TOTAL + ${application.length}");
    return application.toList();
  }

  List<ContactUsModel> getContactUs() {
    if (searchType == SearchType.contactUse && searchKeywoard.isNotEmpty) {
      return contacts.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return contacts.toList();
  }

  List<CustomerModel> getUserListInTime(int days) {
    try {
      return users
          .where((userData) =>
              userData.createdDate!
                  .isAfter(DateTime.now().subtract(Duration(days: 7))) &&
              userData.createdDate!.isBefore(DateTime.now()))
          .toList();
    } on Exception catch (e) {
      return [];
    }
  }

  //get customer series
  List<charts.Series<GraphCoordinate, String>> getApplicationsSeries() {
    Map<String, int> statusCount = {};

    // Mengelompokkan objek berdasarkan status
    for (var obj in application) {
      statusCount[obj.status!] = (statusCount[obj.status] ?? 0) + 1;
    }

    List<GraphCoordinate> statusCountList = statusCount.entries
        .map((entry) => GraphCoordinate(yLine: entry.key, xLine: entry.value))
        .toList();

    return [
      charts.Series<GraphCoordinate, String>(
        id: 'Sales',
        domainFn: (GraphCoordinate trans, _) => trans.yLine,
        measureFn: (GraphCoordinate trans, _) => trans.xLine,
        insideLabelStyleAccessorFn: (datum, index) {
          return const charts.TextStyleSpec(fontSize: 13);
        },
        data: statusCountList,
        colorFn: (datum, index) {
          if (datum.yLine == ApplicationStatus.completed.name) {
            return charts.MaterialPalette.blue.shadeDefault;
          } else if (datum.yLine == ApplicationStatus.pending_payment.name) {
            return charts.MaterialPalette.yellow.shadeDefault;
          } else if (datum.yLine == ApplicationStatus.rejected.name) {
            return charts.MaterialPalette.red.shadeDefault;
          } else if (datum.yLine == ApplicationStatus.submitted.name) {
            return charts.MaterialPalette.cyan.shadeDefault;
          } else if (datum.yLine == ApplicationStatus.paid.name) {
            return charts.MaterialPalette.green.shadeDefault;
          }
          return charts.MaterialPalette.green.shadeDefault;
        },
        labelAccessorFn: (datum, index) =>
            "${datum.yLine}\ntotal:${datum.xLine}",
      )
    ];
  }

  //get selected chart
  ChartFilterModel getSelectedUserChartFilter() {
    final selected =
        usersChartFilter.firstWhere((element) => element.active == true);
    return selected;
  }

  //get selected chart
  ChartFilterModel getSelectedAppsChartFilter() {
    final selected =
        appsChartFilter.firstWhere((element) => element.active == true);
    return selected;
  }

  // //get apps series by month
  List<charts.Series<TimeSeriesCoordinate, DateTime>>
      getApplicationLineSeries() {
    List<TimeSeriesCoordinate> data = [];
    final filter = getSelectedAppsChartFilter();
    DateTime endDate = DateTime.now();
    DateTime startDate = DateTime.now();
    startDate = endDate.subtract(Duration(days: filter.totalDays));
    if (filter.totalDays == -1) {
      final firstDate = application.reduce((oldest, current) =>
          oldest.createdDate!.isBefore(current.createdDate!)
              ? oldest
              : current);
      final days = DateTime.now().difference(firstDate.createdDate!).inDays;
      startDate = endDate.subtract(Duration(days: days));
    }

    for (DateTime date = startDate;
        date.isBefore(endDate) || date.isAtSameMomentAs(endDate);
        date = date.add(const Duration(days: 1))) {
      int count = application
          .where((visa) =>
              visa.createdDate != null &&
              visa.createdDate!.year == date.year &&
              visa.createdDate!.month == date.month &&
              visa.createdDate!.day == date.day)
          .length;
      data.add(TimeSeriesCoordinate(date, count));
    }
    return [
      charts.Series<TimeSeriesCoordinate, DateTime>(
        id: 'Applications',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesCoordinate trans, _) => trans.time,
        measureFn: (TimeSeriesCoordinate trans, _) => trans.total,
        data: data,
      )
    ];
  }

  // get customer series by month
  List<charts.Series<TimeSeriesCoordinate, DateTime>> getCustomerLineSeries() {
    List<TimeSeriesCoordinate> data = [];

    final filter = getSelectedUserChartFilter();
    DateTime endDate = DateTime.now();
    DateTime startDate = DateTime.now();
    startDate = endDate.subtract(Duration(days: filter.totalDays));
    if (filter.totalDays == -1) {
      final firstDate = users.reduce((oldest, current) =>
          oldest.createdDate!.isBefore(current.createdDate!)
              ? oldest
              : current);
      final days = DateTime.now().difference(firstDate.createdDate!).inDays;
      startDate = endDate.subtract(Duration(days: days));
    }

    for (DateTime date = startDate;
        date.isBefore(endDate) || date.isAtSameMomentAs(endDate);
        date = date.add(const Duration(days: 1))) {
      int count = users
          .where((visa) =>
              visa.createdDate != null &&
              visa.createdDate!.year == date.year &&
              visa.createdDate!.month == date.month &&
              visa.createdDate!.day == date.day)
          .length;
      data.add(TimeSeriesCoordinate(date, count));
    }
    return [
      charts.Series<TimeSeriesCoordinate, DateTime>(
        id: 'Customers',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesCoordinate trans, _) => trans.time,
        measureFn: (TimeSeriesCoordinate trans, _) => trans.total,
        data: data,
      )
    ];
  }
}

class GraphCoordinate {
  final int xLine;
  final String yLine;

  GraphCoordinate({required this.xLine, required this.yLine});
}

class TimeSeriesCoordinate {
  final DateTime time;
  final int total;

  TimeSeriesCoordinate(this.time, this.total);
}
