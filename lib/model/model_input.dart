//class untuk model yang akan di gunakan parsing
class ModelInput {
  //variable final yang digunakan untuk mendeklarasikan sebuah type data
  //yang akan di gunakan parsing
  final String nama, email, alamat, nope, password;
  //fungsi const modelinput untuk menetapkan sebuah nilai
  //dari variable final
  const ModelInput(
      //this untuk digunakan membaca sebuah deklarasi
      {this.nama,
      this.email,
      this.alamat,
      this.nope,
      this.password});
}
