import 'package:jevon_qualif/models/camera.dart';
import 'package:jevon_qualif/models/user.dart';

class Review {
  User user;
  Camera camera;
  String comment;

  Review(this.user, this.camera, this.comment);
}
