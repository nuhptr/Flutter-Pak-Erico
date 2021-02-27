void main(List<String> arguments) {
  /**
   * S-ingle Responsibility Principle
   * => membuat class dengan tujuan yang lebih spesific
   * 
   * O-pen / Closed Principle
   * => punya class harusnya tidak bisa diubah-ubah. harusnya ditambahin class baru 
   * (inheritance mungkin)
   * 
   * L-iskov Subtitution Principle
   * => usahakan turunan dari kelas utama memiliki sifat yang sama
   * dengan class induknya
   * 
   * I-nterface Segregation Principle
   * => ketika kita membuat interface spesifik tujuan tertentu, 
   * jangan sampai suatu kelas mengimplementasi sesuatu
   * yang tidak ia butuhkan
   * 
   * D-ependecy Inversion Principle
   * => ketika kita membuat sistem ada globalnya dan detailnya, biasanya yang detailnya
   * berubah. misal simpan data user selamanya (high level modul), 
   * memindahkan data penyimpan user bisa berpindah (low level modul)
   */
}
