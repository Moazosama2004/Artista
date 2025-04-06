import 'dart:developer';

import 'package:artista/artista_app.dart';
import 'package:artista/config/cache_helper.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.initSharedPrefrences();
  await CacheHelper.setSecureData(key: 'name', value: 'Muaz Osama');
  log('${await CacheHelper.getSecureData(key: 'name')}');
  await CacheHelper.deleteAllSecureData();
  log('${await CacheHelper.getSecureData(key: 'name')}');

  runApp(const ArtistaApp());
}
