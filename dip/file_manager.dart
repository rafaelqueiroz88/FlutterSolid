import './encryption_algorithm.dart';

class FileManager {
  void secureFile(EncryptionAlgorithm algo) => algo.encrypt();
}
