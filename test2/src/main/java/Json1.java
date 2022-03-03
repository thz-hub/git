import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class Json1 {
    public static String[] json(net.sf.json.JSONObject jsonFile) {
        JSONObject jsonObject = JSONObject.parseObject(jsonFile.toString());
        String data = jsonObject.getString("data");
        JSONObject jsonObject1 = JSONObject.parseObject(data);
        String list = jsonObject1.getString("list");
        JSONArray jsonArray = JSONArray.parseArray(list);
        String uid = jsonArray.getJSONObject(0).getString("game_uid");
        String region = jsonArray.getJSONObject(0).getString("region");
        System.out.println(jsonObject);
        System.out.println(data);
        System.out.println(list);
        System.out.println(uid);
        System.out.println(region);
        String[] json = {uid, region};
        return json;
    }


}
