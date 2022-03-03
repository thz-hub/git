import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class Json2 {
    public static void json(net.sf.json.JSONObject jsonFiles) {
        JSONObject jsonObject = JSONObject.parseObject(jsonFiles.toString());
        String list = jsonObject.getString("data");


//        JSONArray jsonArray = JSONArray.parseArray(list);
        System.out.println(list);

        //使用dj方法提取data条目

        dj(list,"current_resin");
        //输出dj方法的返回值
        String resin = dj(list,"current_resin");
        System.out.println(resin);
        String finished_task = dj(list,"finished_task_num");
        System.out.println(finished_task);
        String expeditions = dj(list,"expeditions");
        System.out.println(expeditions);
        String home = dj(list,"current_home_coin");
        System.out.println(home);




//        JSONArray jsonArray = JSONArray.parseArray(list);
//        String uid = jsonArray.getJSONObject(0).getString("game_uid");
//        String expeditions = jsonArray.getJSONObject(0).getString("expeditions");
/**        String region = jsonArray.getJSONObject(0).getString("region");
 System.out.println(jsonObject);
 System.out.println(data);
 System.out.println(list);
 System.out.println(uid);
 System.out.println(region);
 String[] json = {uid, region};
 return json;**/
//        System.out.println(expeditions);
//        System.out.println(list);

    }

    //创建dj方法，用来提取data条目
    public static String dj(String list,String name) {
        JSONObject jsonObject1 = JSONObject.parseObject(list);
        String names = jsonObject1.getString(name);
//        System.out.println(names);
        return names;
    }


}
