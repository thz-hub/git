import net.sf.json.JSONObject;

import javax.xml.crypto.Data;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Time;
import java.util.Date;
import java.util.Date.*;
import java.util.Random;
import java.util.random.*;
import java.math.*;


public class Get2 {
    /**
     * 向指定URL发送GET方法的请求
     *
     *  url
     *            发送请求的URL
     *  param
     *            请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
     *  URL 所代表远程资源的响应结果
     */
    public static JSONObject sendGet() throws NoSuchAlgorithmException {
        String cookie = Cookie.main();
        net.sf.json.JSONObject jsonFile = Get.sendGet("https://api-takumi.mihoyo.com/binding/api/getUserGameRolesByCookie?game_biz=hk4e_cn", "", cookie);
        Json1.json(jsonFile);
        String[] json = Json1.json(jsonFile);
        String game_uid = json[0];
        String region = json[1];
        String result = "";
        BufferedReader in = null;

        JSONObject jsonObject = null;
        String url = "https://api-takumi.mihoyo.com/game_record/app/genshin/api/dailyNote?role_id=" + game_uid + "&server=" + region; // 请求的地址
        System.out.println(url);
//        String cookie = Test2.main();
//        Date date = new Date();
        String time = String.valueOf( new Date().getTime()/1000);
//        String time = (int)(times)/1000;
        System.out.println(time);
        //生成0-1随机数，后乘100000
        int randomss = (int)((Math.random()+1)*100000);




        System.out.println(randomss);
        MessageDigest md = MessageDigest.getInstance("MD5");

        String check = "salt=xV8v4Qu54lUKrEYFZkJhB8cuOh9Asafs&t=" + time + "&r=" + randomss + "&b=&q=" + url.split("\\?")[1];
        md.update(check.getBytes());
        String ch = new BigInteger(1, md.digest()).toString(16);
        System.out.println(ch);
        String DS =time + "," + randomss + "," + ch;
        System.out.println(DS);
        try {
            String urlNameString = url;
            URL realUrl = new URL(urlNameString);
            // 打开和URL之间的连接
            URLConnection connection = realUrl.openConnection();
            // 设置通用的请求属性
            connection.setRequestProperty("accept", "*/*");
            connection.setRequestProperty("Accept-Language","zh-CN,zh;q=0.8");
            connection.setRequestProperty("Cache-Control","max-age=0");
            connection.setRequestProperty("connection", "Keep-Alive");

            connection.setRequestProperty("x-rpc-client_type", "5");
            connection.setRequestProperty("x-rpc-app_version", "2.21.2");
            connection.setRequestProperty("user-agent", "Mozilla/5.0 (iPad; CPU OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) miHoYoBBS/2.21.2");
            connection.setRequestProperty("Cookie", cookie);
            connection.setRequestProperty("ds", DS);
            // 建立实际的连接
            connection.connect();
//            // 获取所有响应头字段
//            Map<String, List<String>> map = connection.getHeaderFields();
//            // 遍历所有的响应头字段
//            for (String key : map.keySet()) {
//                System.out.println(key + "--->" + map.get(key));
//            }
            // 定义 BufferedReader输入流来读取URL的响应
            in = new BufferedReader(new InputStreamReader(
                    connection.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
            jsonObject = JSONObject.fromObject(result);
        } catch (Exception e) {
            System.out.println("发送GET请求出现异常！" + e);
            e.printStackTrace();
        }
        // 使用finally块来关闭输入流
        finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return jsonObject;
    }





}
