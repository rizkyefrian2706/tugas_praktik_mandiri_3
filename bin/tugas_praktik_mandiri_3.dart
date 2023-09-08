import 'dart:io';

perkalian(listData, pengali) {
  List newList = [];
  for (int i = 0; i < listData.length; i++) {
    var hasilKali = listData[i] * pengali;
    newList.add(hasilKali);
  }
  return newList;
}

void main(List<String> arguments) {
  print("Masukan Nilai: ");
  double nilaiParse = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (nilaiParse > 70) {
    print("Nilai A\n");
  } else if (nilaiParse > 40 && nilaiParse <= 70) {
    print("Nilai B\n");
  } else if (nilaiParse > 0 && nilaiParse <= 40) {
    print("Nilai C\n");
  } else {
    print("Nilai kosong\n");
  }

  for (int i = 1; i <= 10; i++) {
    print("perulangan $i");
  } 

  print("\nMasukan length list data : ");
  int lengthData = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  List arrayData = [];
  if (lengthData > 0) {
    for (var i = 1; i <= lengthData; i++) {
      print("Masukan nilai : $i");
      int nilai = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      arrayData.add(nilai);
    }
    print("\nList Data Awal $arrayData");
    print("Masukan nilai pengali : ");
    int kali = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    var hasilData = perkalian(arrayData, kali);
    print("Hasil Data Kali $hasilData");
  }else{
    print(arrayData);
  }
}
