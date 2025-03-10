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
    @Default([]) final List<SimpleVisaModel> applicationDraft,
    @Default([]) final List<SimpleVisaModel> corpApplication,
    @Default([]) final List<SimpleVisaModel> corpApplicationDraft,
    @Default([]) final List<ContactUsModel> contacts,
    @Default([]) final List<CustomerModel> users,
    @Default([]) final List<FeedbackModel> feedbacks,
    @Default(SearchType.application) SearchType searchType,
    @Default("") String searchKeywoard,
    required ChartFilterModel customerFilter,
    required ChartFilterModel applicationFilter,
  }) = _AdminDataState;
  factory AdminDataState.initial() => AdminDataState(
        customerFilter: ChartUtil().getChartFilter().first,
        applicationFilter: ChartUtil().getChartFilter().first,
      );

  List<CustomerModel> getCustomers() {
    print(searchType);
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

  List<SimpleVisaModel> getListApplicationDraft() {
    if (searchType == SearchType.applicationDraft &&
        searchKeywoard.isNotEmpty) {
      final filtered = applicationDraft.where((element) {
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
    log("TOTAL + ${applicationDraft.length}");
    return applicationDraft.toList();
  }

  List<SimpleVisaModel> getListCorpApplicationDraft() {
    if (searchType == SearchType.corpApplicationDraft && searchKeywoard.isNotEmpty) {
      final filtered = corpApplicationDraft.where((element) {
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
    log("TOTAL + ${corpApplicationDraft.length}");
    return corpApplicationDraft.toList();
  }
  List<SimpleVisaModel> getListCorpApplication() {
    if (searchType == SearchType.corpApplication && searchKeywoard.isNotEmpty) {
      final filtered = corpApplication.where((element) {
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
    log("TOTAL + ${corpApplication.length}");
    return corpApplication.toList();
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
                  .isAfter(DateTime.now().subtract(const Duration(days: 7))) &&
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
    return customerFilter;
  }

  //get selected chart
  ChartFilterModel getSelectedAppsChartFilter() {
    return applicationFilter;
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

  List<TimeSeriesCoordinate> getApplicationByTimeFrame() {
    final totaldays = applicationFilter.totalDays;

    // Grouping the filtered data by day (ignoring the time) using TimeSeriesCoordinate model
    List<TimeSeriesCoordinate> listsDateData = [];

    if (applicationFilter.range == TimeRange.Last7Days) {
      for (var i = 0; i < totaldays; i++) {
        final dateToFilter = DateTime.now().subtract(Duration(days: i));
        final list = application
            .where((element) => element.createdDate!.isSameDate(dateToFilter))
            .toList();
        listsDateData.add(TimeSeriesCoordinate(dateToFilter, list.length));
      }
    } else if (applicationFilter.range == TimeRange.Last1Month) {
      for (int i = 0; i < totaldays; i += 7) {
        //write here.
        DateTime weekStart =
            DateTime.now().subtract(Duration(days: i + 6)); // Start of the week
        DateTime weekEnd =
            DateTime.now().subtract(Duration(days: i)); // End of the week

        // Filter data within the start and end of the week
        final list = application.where((element) {
          DateTime createdDate = element.createdDate!;
          return (createdDate.isAfter(weekStart) &&
                  createdDate.isBefore(weekEnd)) ||
              createdDate.isSameDate(weekStart) ||
              createdDate.isSameDate(weekEnd);
        }).toList();

        // Use the start of the week as the key in TimeSeriesCoordinate
        listsDateData.add(TimeSeriesCoordinate(weekStart, list.length));
      }
    } else if (applicationFilter.range == TimeRange.Last3Months) {
      for (int i = 0; i < 90; i += 30) {
        DateTime periodStart = DateTime.now()
            .subtract(Duration(days: i + 29)); // Start of the period (30 days)
        DateTime periodEnd =
            DateTime.now().subtract(Duration(days: i)); // End of the period

        // Filter data within the start and end of the 30-day period
        final list = application.where((element) {
          DateTime createdDate = element.createdDate!;
          return (createdDate.isAfter(periodStart) &&
                  createdDate.isBefore(periodEnd)) ||
              createdDate.isSameDate(periodStart) ||
              createdDate.isSameDate(periodEnd);
        }).toList();

        // Use the start of the period as the key in TimeSeriesCoordinate
        listsDateData.add(TimeSeriesCoordinate(periodStart, list.length));
      }
    } else if (applicationFilter.range == TimeRange.Last1Year) {
      // Iterate through each month for the last 12 months
      for (int i = 0; i < 12; i++) {
        DateTime monthEnd = DateTime.now()
            .subtract(Duration(days: i * 30)); // Approximate end of the month
        DateTime monthStart =
            DateTime(monthEnd.year, monthEnd.month, 1); // Start of the month

        // Ensure monthEnd is the last day of the current month being processed
        monthEnd = DateTime(monthEnd.year, monthEnd.month + 1, 1)
            .subtract(const Duration(days: 1));

        // Filter data within the start and end of the month
        final list = application.where((element) {
          DateTime createdDate = element.createdDate!;
          return (createdDate.isAfter(monthStart) &&
                  createdDate.isBefore(monthEnd)) ||
              createdDate.isSameDate(monthStart) ||
              createdDate.isSameDate(monthEnd);
        }).toList();

        // Use the start of the month as the key in TimeSeriesCoordinate
        listsDateData.add(TimeSeriesCoordinate(monthStart, list.length));
      }
    } else {}
    return listsDateData;
  }

  List<ChartData> getApplicationByTimeFoAll() {
    List<GroupChartData> totalYear = [];
    List<ChartData> chartList = [];
    List<int> uniqueYears =
        application.map((item) => item.createdDate!.year).toSet().toList();

    for (int year in uniqueYears) {
      // Mengambil data yang termasuk dalam tahun tertentu
      final dataForYear =
          application.where((item) => item.createdDate!.year == year).toList();
      totalYear.add(GroupChartData(DateTime(year), results: dataForYear));
    }

    for (var element in totalYear) {
      int q1 = 0, q2 = 0, q3 = 0, q4 = 0;

      for (var item in element.results) {
        int month = item.createdDate!.month;

        if (month >= 1 && month <= 3) {
          q1++;
        } else if (month >= 4 && month <= 6) {
          q2++;
        } else if (month >= 7 && month <= 9) {
          q3++;
        } else if (month >= 10 && month <= 12) {
          q4++;
        }
      }
      chartList.add(ChartData(element.time, q1, q2, q3, q4));
    }

    return chartList.reversed.toList();
  }

  List<TimeSeriesCoordinate> getUserDataByTimeFrame() {
    final totaldays = customerFilter.totalDays;

    // Grouping the filtered data by day (ignoring the time) using TimeSeriesCoordinate model
    List<TimeSeriesCoordinate> listsDateData = [];

    if (customerFilter.range == TimeRange.Last7Days) {
      for (var i = 0; i < totaldays; i++) {
        final dateToFilter = DateTime.now().subtract(Duration(days: i));
        final list = users
            .where((element) => element.createdDate!.isSameDate(dateToFilter))
            .toList();
        listsDateData.add(TimeSeriesCoordinate(dateToFilter, list.length));
      }
    } else if (customerFilter.range == TimeRange.Last1Month) {
      for (int i = 0; i < totaldays; i += 7) {
        //write here.
        DateTime weekStart =
            DateTime.now().subtract(Duration(days: i + 6)); // Start of the week
        DateTime weekEnd =
            DateTime.now().subtract(Duration(days: i)); // End of the week

        // Filter data within the start and end of the week
        final list = users.where((element) {
          DateTime createdDate = element.createdDate!;
          return (createdDate.isAfter(weekStart) &&
                  createdDate.isBefore(weekEnd)) ||
              createdDate.isSameDate(weekStart) ||
              createdDate.isSameDate(weekEnd);
        }).toList();

        // Use the start of the week as the key in TimeSeriesCoordinate
        listsDateData.add(TimeSeriesCoordinate(weekStart, list.length));
      }
    } else if (customerFilter.range == TimeRange.Last3Months) {
      for (int i = 0; i < 90; i += 30) {
        DateTime periodStart = DateTime.now()
            .subtract(Duration(days: i + 29)); // Start of the period (30 days)
        DateTime periodEnd =
            DateTime.now().subtract(Duration(days: i)); // End of the period

        // Filter data within the start and end of the 30-day period
        final list = users.where((element) {
          DateTime createdDate = element.createdDate!;
          return (createdDate.isAfter(periodStart) &&
                  createdDate.isBefore(periodEnd)) ||
              createdDate.isSameDate(periodStart) ||
              createdDate.isSameDate(periodEnd);
        }).toList();

        // Use the start of the period as the key in TimeSeriesCoordinate
        listsDateData.add(TimeSeriesCoordinate(periodStart, list.length));
      }
    } else if (customerFilter.range == TimeRange.Last1Year) {
      // Iterate through each month for the last 12 months
      for (int i = 0; i < 12; i++) {
        DateTime monthEnd = DateTime.now()
            .subtract(Duration(days: i * 30)); // Approximate end of the month
        DateTime monthStart =
            DateTime(monthEnd.year, monthEnd.month, 1); // Start of the month

        // Ensure monthEnd is the last day of the current month being processed
        monthEnd = DateTime(monthEnd.year, monthEnd.month + 1, 1)
            .subtract(const Duration(days: 1));

        // Filter data within the start and end of the month
        final list = users.where((element) {
          DateTime createdDate = element.createdDate!;
          return (createdDate.isAfter(monthStart) &&
                  createdDate.isBefore(monthEnd)) ||
              createdDate.isSameDate(monthStart) ||
              createdDate.isSameDate(monthEnd);
        }).toList();

        // Use the start of the month as the key in TimeSeriesCoordinate
        listsDateData.add(TimeSeriesCoordinate(monthStart, list.length));
      }
    } else {}
    return listsDateData;
  }

  List<ChartData> getUsersByTimeFoAll() {
    List<GroupChartData> totalYear = [];
    List<ChartData> chartList = [];
    List<int> uniqueYears =
        users.map((item) => item.createdDate!.year).toSet().toList();

    for (int year in uniqueYears) {
      // Mengambil data yang termasuk dalam tahun tertentu
      final dataForYear =
          users.where((item) => item.createdDate!.year == year).toList();
      totalYear.add(GroupChartData(DateTime(year), resultsUser: dataForYear));
    }

    for (var element in totalYear) {
      int q1 = 0, q2 = 0, q3 = 0, q4 = 0;

      for (var item in element.resultsUser) {
        int month = item.createdDate!.month;

        if (month >= 1 && month <= 3) {
          q1++;
        } else if (month >= 4 && month <= 6) {
          q2++;
        } else if (month >= 7 && month <= 9) {
          q3++;
        } else if (month >= 10 && month <= 12) {
          q4++;
        }
      }
      chartList.add(ChartData(element.time, q1, q2, q3, q4));
    }

    chartList.sort(
      (a, b) => a.time.year.compareTo(b.time.year),
    );

    return chartList;
  }
}

class GraphCoordinate {
  final int xLine;
  final String yLine;

  GraphCoordinate({required this.xLine, required this.yLine});
}

class TimeSeriesCoordinate {
  final DateTime time;
  final DateTime? time2;
  final int total;

  TimeSeriesCoordinate(this.time, this.total, {this.time2});
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

class GroupTimeSeriesCoordinate {
  final DateTime time;
  final List<TimeSeriesCoordinate> results;

  GroupTimeSeriesCoordinate(this.time, this.results);
}

class GroupChartData {
  final DateTime time;
  final List<SimpleVisaModel> results;
  final List<CustomerModel> resultsUser;

  GroupChartData(this.time,
      {this.results = const [], this.resultsUser = const []});
}

class ChartData {
  final DateTime time;
  final int q1;
  final int q2;
  final int q3;
  final int q4;

  ChartData(this.time, this.q1, this.q2, this.q3, this.q4);
}
