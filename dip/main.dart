import './file_manager.dart';
import './aes.dart';
import './rsa.dart';
import './sha.dart';

void main() {
  final fm = FileManager();

  final String aes = fm.secureFile(AlgoAES());
  final String rsa = fm.secureFile(AlgoRSA());
  final String sha = fm.secureFile(AlgoSHA());

  print(aes);
  print(rsa);
  print(sha);
}
