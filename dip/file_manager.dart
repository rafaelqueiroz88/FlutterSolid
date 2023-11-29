import './encryption_algorithm.dart';

class FileManager {
  String secureFile(EncryptionAlgorithm algo) => algo.encrypt();
}
