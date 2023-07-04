import 'package:blinx/nstack/nstack.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:age_calculator/age_calculator.dart';

extension DateFormatter on DateTime {
  String socialMediaLikeFormat(BuildContext context) {
    final datesI18n = context.localization.dates;

    final today = DateTime.now();
    const oneDay = Duration(days: 1);
    const twoDays = Duration(days: 2);
    const oneWeek = Duration(days: 7);
    late String month;
    switch (this.month) {
      case 1:
        month = datesI18n.january;
        break;
      case 2:
        month = datesI18n.february;
        break;
      case 3:
        month = datesI18n.march;
        break;
      case 4:
        month = datesI18n.april;
        break;
      case 5:
        month = datesI18n.may;
        break;
      case 6:
        month = datesI18n.june;
        break;
      case 7:
        month = datesI18n.july;
        break;
      case 8:
        month = datesI18n.august;
        break;
      case 9:
        month = datesI18n.september;
        break;
      case 10:
        month = datesI18n.october;
        break;
      case 11:
        month = datesI18n.november;
        break;
      case 12:
        month = datesI18n.december;
        break;
    }

    final difference = today.difference(this);
    if (difference.compareTo(oneDay) < 1) {
      //return todays date in this format(21 September 11:02)
      return DateFormat('EEE d MMM kk:mm').format(today);
    } else if (difference.compareTo(twoDays) < 1) {
      return datesI18n.yesterday;
    } else if (difference.compareTo(oneWeek) < 1) {
      switch (weekday) {
        case 1:
          return datesI18n.monday;
        case 2:
          return datesI18n.tuesday;
        case 3:
          return datesI18n.wednesday;
        case 4:
          return datesI18n.thursday;
        case 5:
          return datesI18n.friday;
        case 6:
          return datesI18n.saturday;
        case 7:
          return datesI18n.sunday;
      }
    } else if (year == today.year) {
      return '$day $month';
    }
    return '$day $month $year';
  }

  String socialPostCreatedAtFormat(BuildContext context) {
    final datesI18n = context.localization.dates;

    final today = DateTime.now();
    const oneDay = Duration(days: 1);
    const twoDays = Duration(days: 2);
    const oneWeek = Duration(days: 7);

    late String month;
    switch (this.month) {
      case 1:
        month = datesI18n.january;
        break;
      case 2:
        month = datesI18n.february;
        break;
      case 3:
        month = datesI18n.march;
        break;
      case 4:
        month = datesI18n.april;
        break;
      case 5:
        month = datesI18n.may;
        break;
      case 6:
        month = datesI18n.june;
        break;
      case 7:
        month = datesI18n.july;
        break;
      case 8:
        month = datesI18n.august;
        break;
      case 9:
        month = datesI18n.september;
        break;
      case 10:
        month = datesI18n.october;
        break;
      case 11:
        month = datesI18n.november;
        break;
      case 12:
        month = datesI18n.december;
        break;
    }

    final difference = today.difference(this);

    if (difference.compareTo(oneDay) < 1) {
      if (difference.inSeconds < 2) {
        return datesI18n.now;
      }

      if (difference.inSeconds < 60) {
        return '${difference.inSeconds} ${datesI18n.seconds}';
      }

      if (difference.inMinutes < 60) {
        return '${difference.inMinutes} ${datesI18n.min}';
      }

      return '${difference.inHours} ${datesI18n.hours}';
    }

    if (difference.compareTo(twoDays) < 1) {
      return datesI18n.yesterday;
    }

    if (difference.compareTo(oneWeek) < 1) {
      switch (weekday) {
        case 1:
          return datesI18n.monday;
        case 2:
          return datesI18n.tuesday;
        case 3:
          return datesI18n.wednesday;
        case 4:
          return datesI18n.thursday;
        case 5:
          return datesI18n.friday;
        case 6:
          return datesI18n.saturday;
        case 7:
          return datesI18n.sunday;
      }
    }

    if (year == today.year) {
      return '$day $month';
    }

    return '$day $month $year';
  }

  String socialGrouppedDateFormat(BuildContext context) {
    final datesI18n = context.localization.dates;

    final today = DateTime.now();
    const oneDay = Duration(days: 1);
    const twoDays = Duration(days: 2);
    const oneWeek = Duration(days: 7);

    late String month;
    switch (this.month) {
      case 1:
        month = datesI18n.january;
        break;
      case 2:
        month = datesI18n.february;
        break;
      case 3:
        month = datesI18n.march;
        break;
      case 4:
        month = datesI18n.april;
        break;
      case 5:
        month = datesI18n.may;
        break;
      case 6:
        month = datesI18n.june;
        break;
      case 7:
        month = datesI18n.july;
        break;
      case 8:
        month = datesI18n.august;
        break;
      case 9:
        month = datesI18n.september;
        break;
      case 10:
        month = datesI18n.october;
        break;
      case 11:
        month = datesI18n.november;
        break;
      case 12:
        month = datesI18n.december;
        break;
    }

    final difference = today.difference(this);

    if (difference.compareTo(oneDay) < 1) {
      return datesI18n.today;
    }

    if (difference.compareTo(twoDays) < 1) {
      return datesI18n.yesterday;
    }

    if (difference.compareTo(oneWeek) < 1) {
      switch (weekday) {
        case 1:
          return datesI18n.monday;
        case 2:
          return datesI18n.tuesday;
        case 3:
          return datesI18n.wednesday;
        case 4:
          return datesI18n.thursday;
        case 5:
          return datesI18n.friday;
        case 6:
          return datesI18n.saturday;
        case 7:
          return datesI18n.sunday;
      }
    }

    if (year == today.year) {
      return '$day $month';
    }

    return '$day $month $year';
  }

  String get groupedTransactionsDateFormat {
    final formatter = DateFormat('d. M. yyyy');

    return formatter.format(this);
  }

  /// This date formatter will return full date with 12 hours time and day
  ///
  /// Example: `Tuesday, 18 Oct 2022, 6:12 PM`
  String get fullDateWithDayAndTimeFormat {
    final formatter = DateFormat('EEEE, d MMM yyyy, hh:mm a');

    return formatter.format(this);
  }

  String get fullDateWithDayAndTimeFormatInArbic {



    final formatter = DateFormat('EEEE, d MMM yyyy, hh:mm a', 'ar');

    return formatter.format(this);
  }

  String reelsFormat(BuildContext context) {
    final datesI18n = context.localization.dates;
    final today = DateTime.now();
    const oneDay = Duration(days: 1);
    
    final difference = today.difference(this);

    if (difference.compareTo(oneDay) < 1) {
      // Now
      if (difference.inSeconds < 3) {
        return datesI18n.now;
      }
      // Seconds
      if (difference.inSeconds <= 10) {
        return '${datesI18n.ago} ${difference.inSeconds} ${datesI18n.seconds}';
      }
      if (difference.inSeconds < 60) {
        return '${datesI18n.ago} ${difference.inSeconds} ${datesI18n.second}';
      }

      // Minutes 
      if (difference.inMinutes < 2) {
        return '${datesI18n.ago} ${datesI18n.minute}';
      }
      if (difference.inMinutes < 3) {
        return '${datesI18n.ago} ${datesI18n.twominutes}';
      }
      if (difference.inMinutes <= 10) {
        return '${datesI18n.ago} ${difference.inMinutes} ${datesI18n.min}';
      }
      if (difference.inMinutes < 60) {
        return '${datesI18n.ago} ${difference.inMinutes} ${datesI18n.minute}';
      }

      // Hours
      if (difference.inHours < 2) {
        return '${datesI18n.ago} ${datesI18n.hour}';
      }
      if (difference.inHours < 3) {
        return '${datesI18n.ago} ${datesI18n.twohours}';
      }
      if (difference.inHours <= 10) {
        return '${datesI18n.ago} ${difference.inHours} ${datesI18n.hours}';
      }
      if (difference.inHours < 24) {
        return '${datesI18n.ago} ${difference.inHours} ${datesI18n.hour}';
      }
    }

    var t=AgeCalculator.age(this);
    // Years
    if(t.years==1){
      return '${datesI18n.ago} ${datesI18n.year}';
    }else if(t.years==2){
      return '${datesI18n.ago} ${datesI18n.twoyears}';
    }else if(t.years>10){
      return '${datesI18n.ago} ${t.years.toString()} ${datesI18n.year}';
    }else if(t.years!=0){
      return '${datesI18n.ago} ${t.years.toString()} ${datesI18n.years}';
    }
    // Months 
    else if(t.months==1){
      return '${datesI18n.ago} ${datesI18n.month}';
    }else if(t.months==2){
      return '${datesI18n.ago} ${datesI18n.twomonths}';
    }else if(t.months>10){
      return '${datesI18n.ago} ${t.months.toString()} ${datesI18n.monthsplural}';
    }else if(t.months!=0){
      return '${datesI18n.ago} ${t.months.toString()} ${datesI18n.months}';
    }
    // Days
    else if(t.days==1){
      return '${datesI18n.ago} ${datesI18n.yesterday}';
    }else if(t.days==2){
      return '${datesI18n.ago} ${datesI18n.twodays}';
    }else if(t.days>10){
      return '${datesI18n.ago} ${t.days.toString()} ${datesI18n.day}';
    }else if(t.days!=0){
      return '${datesI18n.ago} ${t.days.toString()} ${datesI18n.days}';
    }
    return '';
  }
}
