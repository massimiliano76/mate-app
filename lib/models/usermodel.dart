class UserModel {
  String id;
  String language;
  String mail;
  int semester;
  String subject;
  String university;
  String department;
  List upvotes;
  List downvotes;
  int average;
  int credits;

  UserModel({
    this.id,
    this.language,
    this.mail,
    this.semester,
    this.subject,
    this.university,
    this.department,
    this.upvotes,
    this.downvotes,
    this.average,
    this.credits,
  });
  UserModel.fromMap(doc) {
    id = doc.id;
    language = doc.data()['language'] ?? 'german';
    mail = doc.data()['mail'] ?? '';
    semester = doc.data()['semester'] ?? 0;
    subject = doc.data()['subject'] ?? '';
    university = doc.data()['university'] ?? '';
    department = doc.data()['department'] ?? '';
    upvotes = doc.data()['upvotes'] ?? [];
    downvotes = doc.data()['downvotes'] ?? [];
    average = doc.average ?? 0;
    credits = doc.credit_points ?? 0;
  }
}
