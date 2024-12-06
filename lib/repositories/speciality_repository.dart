import '../models/speciality.dart';

class SpecialityRepository {

  Future<List<Speciality>> getAllSpecialities() async {
    final db = await database;
    final List<Map<String, dynamic>> specialitiesMap = await db.query('specialities');
    return specialitiesMap.map((especialityMap) => Speciality.fromMap(especialityMap)).toList();
  }
}
