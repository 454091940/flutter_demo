
import 'package:shared_preferences/shared_preferences.dart';


class Stroges{
      //封装了最常用的本地存储
    static Future<void> setString(key,value)async{
      SharedPreferences save = await SharedPreferences.getInstance();
      save.setString(key, value);
    }


    static Future<String> getString(key)async{
      SharedPreferences save = await SharedPreferences.getInstance();
      return save.getString(key);
    }

    static Future<void> remove(key)async{
      SharedPreferences save = await SharedPreferences.getInstance();
      save.remove(key);
    }

}