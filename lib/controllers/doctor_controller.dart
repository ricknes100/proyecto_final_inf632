import '../models/doctor.dart';
import '../services/doctor_service.dart';

class DoctorController {
  final DoctorService _doctorService;

  DoctorController(this._doctorService);

  final _doctors = <Doctor>[];

  List<Doctor> get doctors => List.unmodifiable(_doctors);

  Future<void> loadDoctors() async {
    try {
      _doctors.clear();
      final loadedDoctors = await _doctorService.getDoctors();
      if (loadedDoctors.isNotEmpty) _doctors.addAll(loadedDoctors);
    } catch (e) {
      throw Exception("Error al cargar los doctores: $e");
    }
  }
}
