import '../domain/models/month_power.dart';
import '../domain/models/year_power.dart';

class PowerDummyData {
  static List<YearPower> averagePowerLineData() {
    return <YearPower>[
      YearPower(2009, 1900),
      YearPower(2010, 2800),
      YearPower(2011, 3100),
      YearPower(2012, 2300),
      YearPower(2013, 1400),
      YearPower(2014, 1600),
      YearPower(2015, 2600),
      YearPower(2016, 3000),
      YearPower(2017, 2300),
      YearPower(2018, 1700),
      YearPower(2019, 2600),
    ];
  }

  static List<MonthPower> currentPowerBarData() {
    return <MonthPower>[
      MonthPower("Jan", 140),
      MonthPower("Feb", 120),
      MonthPower("Mar", 160),
      MonthPower("Apr", 110),
      MonthPower("May", 130),
      MonthPower("Jun", 150),
      MonthPower("Jul", 125),
      MonthPower("Aug", 165),
      MonthPower("Sep", 135),
      MonthPower("Oct", 145),
      MonthPower("Nov", 155),
      MonthPower("Dec", 140),
    ];
  }
}
