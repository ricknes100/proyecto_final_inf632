import '../models/doctor.dart';

class DoctorRepository {

  Future<List<Doctor>> getAllDoctors() async {
    final db = await database;
    final List<Map<String, dynamic>> doctorsMap = await db.query('doctors');
    return doctorsMap.map((doctorMap) => Doctor.fromMap(doctorMap)).toList();
  }
}
