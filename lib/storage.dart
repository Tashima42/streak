import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveStreak(int streak) async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setInt('streak', streak);
}

Future<int> getStreak() async {
  final prefs = await SharedPreferences.getInstance();

  final streak = prefs.getInt('streak') ?? 0;
  return streak;
}

Future<void> saveLastUpdatedAt(DateTime updated) async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString('streak-last-updated', updated.toIso8601String());
}

Future<DateTime> getLasteUpdatedAt() async {
  final prefs = await SharedPreferences.getInstance();

  final lastUpdatedAt = prefs.getString('streak-last-updated') ?? "";
  return DateTime.parse(lastUpdatedAt);
}
