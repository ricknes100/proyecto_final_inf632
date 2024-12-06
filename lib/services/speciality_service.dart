import '../models/speciality.dart';
import '../repositories/speciality_repository.dart';

class SpecialityService {
  final SpecialityRepository _specialityRepository;

  SpecialityService(this._specialityRepository);

  Future<List<Speciality>> getSpecialities() async {
    return await _specialityRepository.getAllSpecialities();
  }
}
