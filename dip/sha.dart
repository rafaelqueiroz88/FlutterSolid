import './encryption_algorithm.dart';

class AlgoSHA implements EncryptionAlgorithm {
  @override
  String encrypt() {
    return 'Some supercool SHA encryption logic here';
  }
}
