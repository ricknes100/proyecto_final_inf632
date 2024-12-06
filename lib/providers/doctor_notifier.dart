import 'package:flutter/material.dart';
import '../controllers/doctor_controller.dart';
import '../models/doctor.dart';

class DoctorNotifier extends ChangeNotifier {
  final DoctorController _doctorController;
  bool _isLoading = false;
  String? _errorMessage;

  DoctorNotifier(this._doctorController) {
    _loadDoctors();
  }

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  List<Doctor> get doctors => _doctorController.doctors;
  int get notasCount => doctors.length;

  Future<void> _loadDoctors() async {
    try {
      _isLoading = true;
      notifyListeners();
      await _doctorController.loadDoctors();
    } catch (_) {
      _errorMessage = "No se pudieron cargar los medicos";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
