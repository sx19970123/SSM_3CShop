package com.alipay;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101600701906";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCCqQsYj3+uFy0kJWvmqFqL7JiGS7HoOHlFVzlokqyOILXHAyG/Du5EokeUOVaNdjcVw3NbEhEY1X/B6GdyvorK8BKJzZQsXCfm67nwE4CoE5I7DzKWOpDfFADBUbg1zwR4XH/gy7fN5vL9eBItmT0ST0lMpaJoJRZXctvzbhLdmjxm3L1mzhhpxoHCfQdwF9vRQEYjrrNxjfhj+haZ267Hs7dH9brWcndR5Pz+KJWi4okGinPI/gr0savk/Wkw1lU07MV6tvEPJIxCnOWdN+izVBcrsLdpqu/evL/nz4N0rAYXVGcz9FMHNy8cwbFE1ZIzq2aGSXLIMb7/+5NBm6ErAgMBAAECggEAHliOeCzT1aYSWOPMFK0jIn5XylEIR8vd9onUjoIKS5QzQ75pdwtLsWsTPsy2WnKLRqW3Q/6FNARaALouVIsGhy2M0K6LbGYW6l3zOFv/NIofG1JjSFrfzL/DkSKeqviirCWnmZkW3l52LwJVDnwZoAgEGSYa+x8p+jN1/CqjfQ3/N8u2NXohHx4bOEXeBFsu18kdKn2Osk4CApKJnzi2TNaN9dnkqFSU6Y88LXnl1RL1ymJ3F0M9bTC9Z/gB8O6mUkEEbObDemrp/xNFD6V43s3W5onBSi5zqnY1n3GaeMsAAW91umIZeIByFL6u8BZoXTw4sQoemiuSCOL9iKxFsQKBgQDlVbKoTYOtczKpIm8KOc//XPR3reDpniW0YIdPTTQTZELVTnBMSQOjOHY2pH8LbvmhVPqVxhe+ZQxqLRNKB9xMMX60n69mJhJSoynCH9FA9S8OBF3wzEuuktnsmgq8MSNz4xejSpFx+p2WoBS8tugUIlCl/RjDeK4tIqKMEcKQwwKBgQCR2jwyPiKY9WnGynQbwFfreVv8r2Em9Ea9iW9guab1h0AyCuF5E8t6xZ8vFhDi+SXtGn2YDKYj62PBBnw+3Vlgilhf+RCVtIFw+VNICeWYaoaw6lxZQm/S/+8iqTnSgksm6L8Xiaf5NTO/YsdMiaquKLByCbCDpNmYSCFeC5KneQKBgF21TcI9oi+OocXAnzTDeL00o2P/taZgC7IPu1ppBn1h+3kjivlw4D6ihJNBVfQ7DV+h1J68idkveworjvUyDw9HLinqEgagSd5gc2CyFZQAW5DTsfsBz27u7IMkUnyha4Yf5fnAL3wuVpREpxSRfHU1rFSW/bZpqmog++BWJXV3AoGAMzqPCCqw5j7Uz2EO1SyC9Q9kUuWa3x7PtgUO3M94qCbAUpNlzKw6PT4qglRizAYs3xH96SkQNe+Y0xSfEUmX+gO9tL/7pkmHaZH5QYVQYm+QLZWzqBpgwqDocqkzyQ/Aq8L2U6MjH7IjIeblD6oPDCr4hqWGnUaKsyUqqyivcykCgYA+O15Csh02zts5dmHEErMZItftPJsXBFf9hi2ZoSxhF+nHG5QeY7E7pm1eNQyEGooYZ4OEZM3UFkLKNegyDNKdu3nRTa3H1/8+GO9IfjLDMp9yfh27lljySjss05WMkwH7S9rcPoRgvqvmNCDIxz0Drr+krbnTCDxzyeCUsBVqjQ==";

	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjuJe0OoXa4VX8itMb/wU7MzWOJ/omrB0IRbSaffuhUarcEDMe0KaC8wmzhbvjzYU7ojilRJpt0tnhTihy7qPSCH7zY0R8pQVSADm6Xt7IwJZa9CrQ/HyxvYzfykr5ZAko01R3JyPFiXBJyfrchEAiFW8bbvXuSe4eGVRtFmlfk1HUgbSNW6UoXqeq1JcyVpSKdkPL+HKDZ7t2q/Fq0jrF1oR9pnNsFdSWM6XLF2vjSUCQs9XDzbywHL1CGqJCeK39cN9ig+S7tyAc1YJWN8k9Hc1Z1X2B+EvCOygXeOfsYKwlzrqqVOVWrIY2RlnRgz/EjZTn5ImSH0qkVsqkaZsxwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/SSM_3CShop_war_exploded/success";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/SSM_3CShop_war_exploded/success";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

