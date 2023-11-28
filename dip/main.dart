import './file_manager.dart';
import './aes.dart';
import './rsa.dart';
import './sha.dart';

void main() {
  final fm = FileManager();

  fm.secureFile(AlgoAES());
  fm.secureFile(AlgoRSA());
}
