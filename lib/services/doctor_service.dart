import '../models/doctor.dart';
import '../repositories/doctor_repository.dart';

class DoctorService {
  final DoctorRepository _doctorRepository;

  DoctorService(this._doctorRepository);

  Future<List<Doctor>> getDoctors() async {
    return await _doctorRepository.getAllDoctors();
  }
}
