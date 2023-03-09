part of 'prayet_times_cubit.dart';

@immutable
abstract class PrayerTimesState {}

class PrayerTimesInitial extends PrayerTimesState {}

class PrayerTimesLoading extends PrayerTimesState {}

class PrayerTimesLoaded extends PrayerTimesState {
  final PrayerTimesModel prayerTime;

  PrayerTimesLoaded(this.prayerTime);
}

class PrayerTimesError extends PrayerTimesState {}
