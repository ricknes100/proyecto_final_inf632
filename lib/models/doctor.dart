class Doctor {
  final int? id;
  final String fullName;
  final String photo;
  final String speciality;
  final String description;

  Doctor({
    this.id,
    this.fullName = '',
    this.photo = '',
    this.speciality = '',
    this.description = ''
  });

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      id: map['id'],
      fullName: map['fullName'],
      photo: map['photo'],
      speciality: map['speciality'],
      description: map['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'fullName': fullName,
      'photo': photo,
      'speciality': speciality,
      'description': description
    };
  }
}
