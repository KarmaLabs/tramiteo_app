import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDataStore {
  static const sessionsBoxName = 'sessionsBox';
  static const isReviewedBoxName = 'isReviewedBox';
  static const settingsBoxName = 'settingsBox';

  Future<void> init() async {
    await Hive.initFlutter();
    // await Hive.openBox<int>(sessionsBoxName);
    // await Hive.openBox<bool>(isReviewedBoxName);
    await Hive.openBox(settingsBoxName);
  }

  // Future<void> createDemoTasks({
  //   required List<Task> frontTasks,
  //   required List<Task> backTasks,
  //   bool force = false,
  // }) async {
  //   final frontBox = Hive.box<Task>(frontTasksBoxName);
  //   if (frontBox.isEmpty || force == true) {
  //     await frontBox.clear();
  //     await frontBox.addAll(frontTasks);
  //   } else {
  //     print('Box already has ${frontBox.length} items');
  //   }
  //   final backBox = Hive.box<Task>(backTasksBoxName);
  //   if (backBox.isEmpty || force == true) {
  //     await backBox.clear();
  //     await backBox.addAll(backTasks);
  //   } else {
  //     print('Box already has ${backBox.length} items');
  //   }
  // }

  // // front and back tasks
  // ValueListenable<Box<Task>> frontTasksListenable() {
  //   return Hive.box<Task>(frontTasksBoxName).listenable();
  // }

  // ValueListenable<Box<Task>> backTasksListenable() {
  //   return Hive.box<Task>(backTasksBoxName).listenable();
  // }

  Future<void> setReviewed({required bool isReviewed}) async {
    final box = Hive.box(settingsBoxName);
    await box.put('isReviewed', isReviewed);
  }

  ValueListenable<Box> settingsListenable() {
    final box = Hive.box(settingsBoxName);
    //final key = taskStateKey(task.id);
    return box.listenable(keys: ['isReviewed']);
  }

  bool isReviewed() {
    final box = Hive.box(settingsBoxName);
    return box.get('isReviewed') ?? false;
  }

//   // TaskState methods
//   Future<void> setTaskState({
//     required Task task,
//     required bool completed,
//   }) async {
//     final box = Hive.box<TaskState>(tasksStateBoxName);
//     final taskState = TaskState(taskId: task.id, completed: completed);
//     await box.put(taskStateKey(task.id), taskState);
//   }

//   ValueListenable<Box<TaskState>> taskStateListenable({required Task task}) {
//     final box = Hive.box<TaskState>(tasksStateBoxName);
//     final key = taskStateKey(task.id);
//     return box.listenable(keys: <String>[key]);
//   }

//   TaskState taskState(Box<TaskState> box, {required Task task}) {
//     final key = taskStateKey(task.id);
//     return box.get(key) ?? TaskState(taskId: task.id, completed: false);
//   }

//   // App Theme Settings
//   Future<void> setAppThemeSettings(
//       {required AppThemeSettings settings,
//       required FrontOrBackSide side}) async {
//     final themeKey = side == FrontOrBackSide.front
//         ? frontAppThemeBoxName
//         : backAppThemeBoxName;
//     final box = Hive.box<AppThemeSettings>(themeKey);
//     await box.put(themeKey, settings);
//   }

//   Future<AppThemeSettings> appThemeSettings(
//       {required FrontOrBackSide side}) async {
//     final themeKey = side == FrontOrBackSide.front
//         ? frontAppThemeBoxName
//         : backAppThemeBoxName;
//     final box = Hive.box<AppThemeSettings>(themeKey);
//     final settings = box.get(themeKey);
//     return settings ?? AppThemeSettings.defaults(side);
//   }
// }
}

final dataStoreProvider = Provider<HiveDataStore>((ref) {
  throw UnimplementedError();
});
