import 'package:streak/storage.dart';

class Streak {
  late int streak;
  late DateTime lastUpdated;

  int sreak() {
    return streak;
  }

  Future<void> loadData() async {
    streak = await getStreak();
    lastUpdated = await getLasteUpdatedAt();
  }

  Future<void> increaseStreak() async {
    streak += 1;
    lastUpdated = DateTime.now();
    await saveStreak(streak);
    await saveLastUpdatedAt(lastUpdated);
  }

  Future<void> resetStreak() async {
    streak = 0;
    await saveStreak(0);
  }

  bool checkStreakToday() {
    final now = DateTime.now();
    if (now.day != lastUpdated.day &&
        now.year != lastUpdated.year &&
        now.month != lastUpdated.month) {
      return false;
    }
    return true;
  }

  void checkStreak() {}
}
