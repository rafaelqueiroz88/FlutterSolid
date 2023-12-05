import './person.dart';
import './badge.dart';

class Leader extends Person {
  final String typeMaster;
  final Badge badge;
  Leader(name, this.typeMaster, this.badge) : super(name);
}
