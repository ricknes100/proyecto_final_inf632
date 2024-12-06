import 'package:flutter/material.dart';
import '../models/speciality.dart';
import '../controllers/speciality_controller.dart';

class SpecialityNotifier extends ChangeNotifier {
  final SpecialityController _specialityController;
  bool _isLoading = false;
  String? _errorMessage;

  SpecialityNotifier(this._specialityController) {
    _loadSpecialities();
  }

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  List<Speciality> get specialities => _specialityController.specialities;
  int get specialitiesCount => specialities.length;

  Future<void> _loadSpecialities() async {
    try {
      _isLoading = true;
      notifyListeners();
      await _specialityController.loadSpecialities();
    } catch (_) {
      _errorMessage = "No se pudieron cargar las especialidades";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
