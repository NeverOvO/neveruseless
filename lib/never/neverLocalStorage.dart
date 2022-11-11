import 'package:shared_preferences/shared_preferences.dart';

neverLocalStorageWrite(String flag,String message) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(flag, message);
}

neverLocalStorageRead(String flag) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var readData = prefs.getString(flag);
  return readData.toString();
}

neverLocalStorageRemove(String flag) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove(flag);
}
