abstract class EncryptionAlgorithm {
  const EncryptionAlgorithm();
  String encrypt();
}

class AlgoAES implements EncryptionAlgorithm {
  @override
  String encrypt() {
    return 'Some supercool AES encryption logic here';
  }
}

class AlgoRSA implements EncryptionAlgorithm {
  @override
  String encrypt() {
    return 'Some supercool RSA encryption logic here';
  }
}

class AlgoSHA implements EncryptionAlgorithm {
  @override
  String encrypt() {
    return 'Some supercool SHA encryption logic here';
  }
}

// The usage of abstractions gives the freedom to be independent from the implementation.
// The point is that anyone using the EncryptionAlgorithm only knows about the encrypt()
// method and the other internal details of the class don 't matter at all!
class FileManager {
  void secureFile(EncryptionAlgorithm algo) => algo.encrypt();
}

void main() {
  final fm = FileManager();

  fm.secureFile(AlgoAES());
  fm.secureFile(AlgoRSA());
  fm.secureFile(AlgoSHA());
}
