import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxTextController extends GetxController {
  var name = "".obs;
  var alamat = "".obs;
  var pilih = "".obs;
  final nameEditingController = TextEditingController();
  final alamatEditingController = TextEditingController();
  final pilihEditingController = TextEditingController();

  onchangePilih(var Pilih){
    pilih.value = Pilih;
  }
}