import '../models/speciality.dart';
import '../services/speciality_service.dart';

class SpecialityController {
  final SpecialityService _specialityService;

  SpecialityController(this._specialityService);

  final _specialities = <Speciality>[];

  List<Speciality> get specialities => List.unmodifiable(_specialities);

  Future<void> loadSpecialities() async {
    try {
      _specialities.clear();
      final loadedSpecialities = await _specialityService.getSpecialities();
      if (loadedSpecialities.isNotEmpty) _specialities.addAll(loadedSpecialities);
    } catch (e) {
      throw Exception("Error al cargar los doctores: $e");
    }
  }
}
