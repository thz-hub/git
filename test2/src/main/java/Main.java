//import net.sf.json.JSONObject;

import java.security.NoSuchAlgorithmException;

public class Main {

    public static void main(String[] args) throws NoSuchAlgorithmException {
        //发送 GET 请求
        String cookie = Cookie.main();
        System.out.println(cookie);
        net.sf.json.JSONObject jsonFile = Get.sendGet("https://api-takumi.mihoyo.com/binding/api/getUserGameRolesByCookie?game_biz=hk4e_cn", "", cookie);
/***        System.out.println("kind:" + jsonFile.getString("kind"));
 System.out.println("data:" + jsonFile.getString("data"));
 String date = jsonFile.getString("data");
 //        jsonFile = jsonFile.getString("data");
 System.out.println("jsonFile:" + jsonFile);
 //        System.out.println("list:" + jsonFile.getString("list"));
 System.out.println(date);
 JSONObject jsonObject = JSONObject.fromObject(jsonFile);
 System.out.println(jsonObject);
 ***/

        //解析json
//        Json1 json1;
//        json1 = new Json1();
        Json1.json(jsonFile);
        String[] json = Json1.json(jsonFile);
        String game_uid = json[0];
        String region = json[1];
        System.out.println(game_uid);
        System.out.println(region);



        //Get 详情信息
        net.sf.json.JSONObject jsonFiles = Get2.sendGet();
        System.out.println(jsonFiles);

        //解析json
        Json2.json(jsonFiles);



//        System.out.println(uid);


//        JSONArray jsonArray = jsonObject.getJSONArray("data");
//        System.out.println(jsonArray.get(0));
    }



}
