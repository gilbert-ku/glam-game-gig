// lib/models/user.dart

class User {
  final String id;
  final String name;
  final String email;
  final String profileImageUrl;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.profileImageUrl,
  });

  // Factory method to create a User from a map (e.g., from JSON)
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      profileImageUrl: map['profileImageUrl'],
    );
  }

  // Method to convert User to a map (e.g., for JSON encoding)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profileImageUrl': profileImageUrl,
    };
  }
}

