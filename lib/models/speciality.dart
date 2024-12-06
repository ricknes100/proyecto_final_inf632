class Speciality {
  final int? id;
  final String name;

  Speciality({this.id, this.name = ''});

  factory Speciality.fromMap(Map<String, dynamic> map) {
    return Speciality(
      id: map['id'],
      name: map['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'name': name,
    };
  }
}
