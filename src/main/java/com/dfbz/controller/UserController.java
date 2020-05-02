package com.dfbz.controller;

import com.dfbz.Util.Code;
import com.dfbz.Util.VerifyCode;
import com.dfbz.po.*;
import com.dfbz.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.jws.soap.SOAPBinding;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserService US;

    String randomText; //图片验证码
    String achieveCode;  //邮件验证码
    List<String> success = new ArrayList<String>();
    List<String> error = new ArrayList<String>();
    User user;
    int cart_ids;
    int states;

    {
        success.add("success");
        error.add("error");
    }

    //用户登录
    @RequestMapping("login")
    @ResponseBody
    public List<String> login(String user_email, String emailcode, HttpSession session) throws SQLException {
         user = US.login(user_email);
         /*
        user = US.login(user_email);
        List<String> list = US.publicUser(user_email, session);
        return list;*/
        if (user==null){
            if (emailcode.equals(achieveCode)){
                US.AddUser(user_email);
                user = US.login(user_email);
                List<String> list = US.publicUser(user_email, session);
                return list;
            }else {
                return error;
            }
        }else {
            if (emailcode.equals(achieveCode)){
                List<String> list = US.publicUser(user_email, session);
                return list;
            }else {
                return error;
            }
        }
    }

    //主页推荐Switch
    @RequestMapping("switch")
    @ResponseBody
    List<Commodity> IndexGame() throws SQLException {
        List<Commodity> commodities = US.IndexGame();
        return commodities;
    }

    //主页四个手机
    @RequestMapping("phone")
    @ResponseBody
    List<Commodity> Indexphone() throws SQLException {
        List<Commodity> commodity = US.IndexPhone();
        return commodity;
    }

    //主页四个笔记本
    @RequestMapping("laptop")
    @ResponseBody
    List<Commodity> IndexLaptop() throws SQLException {
        List<Commodity> commodities = US.IndexLaptop();
        return commodities;
    }

    //显示商品名称
    @RequestMapping("category")
    String Category(int category_id, Model md) throws SQLException {
        Category category = US.Category(category_id);
        List<Commodity> commodities = US.ALLCommodity(category_id);
        List<Brand> brands = US.Brands(category_id);
        md.addAttribute("brands", brands);
        md.addAttribute("category", category);
        md.addAttribute("commodities", commodities);
        return "all";
    }

    //根据品牌筛选商品
    @RequestMapping("Brand_Commodity")
    String Brand_Commodity(int commodity_category_id, int brand_id, Model md) throws SQLException {
        List<Commodity> commodities = US.Brand_Commodity(commodity_category_id, brand_id);
        Category category = US.Category(commodity_category_id);
        List<Brand> brands = US.Brands(commodity_category_id);
        md.addAttribute("brands", brands);
        md.addAttribute("category", category);
        md.addAttribute("commodities", commodities);
        return "all";
    }

    //根据商品ID显示商品详情
    @RequestMapping("COMMODITY_Detailed")
    String COMMODITY_Detailed(int commodity_id, int pj, Model md, @RequestParam(value = "pn", defaultValue = "1") Integer pn) throws SQLException {
        PageHelper.startPage(pn, 5);
        List<Comment> comment = US.Comment_ByID(commodity_id);
        PageInfo page = new PageInfo(comment, 5);
        md.addAttribute("page", page);
        md.addAttribute("pj", pj);
        Commodity commodity = US.COMMODITY_Detailed(commodity_id);
        List<Size> size_color = US.Size_color(commodity_id);
        List<Size> size_disk = US.Size_disk(commodity_id);
        List<Describe> describe = US.Describe(commodity_id);
        md.addAttribute("describe", describe);
        md.addAttribute("size_disk", size_disk);
        md.addAttribute("size_color", size_color);
        md.addAttribute("commodity", commodity);
        return "detailed";
    }

    //根据选择出现价格
    @RequestMapping("price")
    @ResponseBody
    Size Price(int commodity_id, String disk) throws SQLException {
        Size price = US.PriceBySize(commodity_id, disk);
        return price;
    }

    //查询购物车
    @RequestMapping("allCart")
    @ResponseBody
    void allCart(int user_id,HttpSession session)throws SQLException{
        List<String> all = US.publicCart(1, user_id, session);
    }
    //添加到购物车
    @RequestMapping("Cart")
    @ResponseBody
    List<String> addCart(int user_id, int commodity_id, int commodity_price, String commodity_color, String commodity_size,int commodity_count, HttpSession session) throws SQLException {
        int numb=commodity_count-1;
        US.numMod(commodity_id,numb);
        int i = US.addCatr(user_id, commodity_id, commodity_price, commodity_color, commodity_size);
        List<String> all = US.publicCart(i, user_id, session);
        return all;
    }


    //确认订单
    @RequestMapping("addpay")
    String addpay(int user_id, int commodity_id,int commodity_count, int commodity_price, String commodity_color, String commodity_size,Model md,HttpSession session) throws SQLException {
        int numb = commodity_count-1;
        System.out.println(numb);
        US.numMod(commodity_id,numb);
        US.addpay(user_id,commodity_id,commodity_price,commodity_color,commodity_size);
        List<Cart> cart = US.max_commodity(user_id);
        List<Address> addresses = US.addRess(user_id);
        Count count = new Count(1,commodity_price);
        session.setAttribute("count",count);
        md.addAttribute("carts",cart);
        md.addAttribute("addresses", addresses);
        return "cart";
    }

    //根据购物车ID查询未支付订单
    @RequestMapping("noPayByCartId")
    String noPayByCartId(int user_id,int cart_id,Model md,HttpSession session)throws SQLException {
        List<Cart> cart = US.noPayByCartId(user_id, cart_id);
        for (Cart ca:cart
             ) {
            int commodity_price = ca.getCommodity_price();
            Count count = new Count(1,commodity_price);
            session.setAttribute("count",count);
        }
        md.addAttribute("carts",cart);
        List<Address> addresses = US.addRess(user_id);
        md.addAttribute("addresses", addresses);
        return "cart";
    }

    //删除购物车内容
    @RequestMapping("cartDel")
    @ResponseBody
    public List<String> cartDel(int cart_id,int commodity_count,int commodity_id, int user_id, HttpSession session) throws SQLException {
        Cart num = US.num(cart_id);
        int numb = commodity_count+num.getNum();
        US.numMod(commodity_id,numb);
        int i = US.cartDel(cart_id);
        List<String> all = US.publicCart(i, user_id, session);
        return all;
    }

    //进入支付前页面
    @RequestMapping("address")
    String address(int user_id, Model md, HttpSession session) throws SQLException {
        List<Address> addresses = US.addRess(user_id);
        Count count = US.count(user_id);
        session.setAttribute("count", count);
        md.addAttribute("addresses", addresses);
        return "cart";
    }

    //查看地址
    @RequestMapping("myAddress")
    String myAddress(int user_id, Model md) throws SQLException {
        List<Address> addresses = US.addRess(user_id);
        md.addAttribute("addresses", addresses);
        return "address";
    }

    //订单
    @RequestMapping("allOrders")
    String allOrders(int user_id, @RequestParam(value = "pn", defaultValue = "1") Integer pn, Model md) throws SQLException {
        PageHelper.startPage(pn, 3);
        List<Cart> all = US.allOrders(user_id);
        PageInfo page = new PageInfo(all, 3);
        md.addAttribute("page", page);
        return "allorders";
    }

    //删除地址之前
    @RequestMapping("del")
    @ResponseBody
    List<String> del(int user_id ,int address_id) throws SQLException {
        List<Cart> all = US.allOrders(user_id);
        a:
        for (Cart cart : all) {
            if (address_id == cart.getAddress_id()) {
                return error;
            }
        }
        return success;
    }


    //查询待发货订单
    @RequestMapping("noDelivery")
    String noDelivery(int user_id, Model md) throws SQLException {
        List<Cart> noDelivery = US.nofa(user_id, 1);
        md.addAttribute("noDelivery", noDelivery);
        return "nodelivery";
    }

    //查询待收货订单
    @RequestMapping("Delivery")
    String Delivery(int user_id, Model md) throws SQLException {
        List<Cart> Delivery = US.noPay(user_id, 2);
        md.addAttribute("Delivery", Delivery);
        return "delivery";
    }

    //查询待评价订单
    @RequestMapping("noEvaluation")
    String noEvaluation(int user_id, Model md) throws SQLException {
        List<Cart> noEvaluation = US.noPay(user_id, 3);
        md.addAttribute("noEvaluation", noEvaluation);
        return "noevaluation";
    }

    //查询已完成订单
    @RequestMapping("Complete")
    String Complete(int user_id, Model md) throws SQLException {
        List<Cart> Complete = US.noPay(user_id, 4);
        md.addAttribute("Complete", Complete);
        return "complete";
    }

    //添加地址
    @RequestMapping("addAdderss")
    String addAdderss(int user_id,BigInteger user_phone, String address, String name, Model md) throws SQLException {
         US.addAdderss(user_id, user_phone, address, name);
        List<Address> addresses = US.addRess(user_id);
        md.addAttribute("addresses", addresses);
        return "address";
    }


    //添加评论
    @RequestMapping("addComment")
    String addComment(String comment_type, String comment, int user_id, int cart_id, int commodity_id, Model md) throws SQLException {
        US.addComment(comment_type, comment, user_id, commodity_id);
        US.ConfirmReceipt(cart_id, 4);
        List<Cart> Complete = US.noPay(user_id, 4);
        md.addAttribute("Complete", Complete);
        return "complete";
    }

    //退出登录
    @RequestMapping("logOut")
    String logOut(HttpSession session) {
        session.removeAttribute("carts");
        session.removeAttribute("count");
        session.removeAttribute("user");
        return "index";
    }

    //点击去付款后将用户地址添加到cart表
    @RequestMapping("addRessInCart")
    @ResponseBody
    void addRessInCart(int user_id, int address_id, int state) throws SQLException {
        states = state;
         US.addRessInCart(user_id, address_id);
    }


    @RequestMapping("addRessInCartbyId")
    @ResponseBody
    void addRessInCartbyId(int user_id, int address_id,int cart_id ,int state)throws SQLException {
        cart_ids = cart_id;
        states = state;
        US.addRessInCartbyId(user_id, address_id, cart_id);
    }

    //更改我的订单状态
    @RequestMapping("success")
    String success(HttpSession session) throws SQLException {
        if (states==6){
           US.modifyOrdersById(user.getUser_id(),1,cart_ids);
            return "success";
        }else if (states==5){
            int user_id = user.getUser_id();
            US.modifyOrders(user_id,1);
            session.removeAttribute("carts");
            session.removeAttribute("count");
            return "success";
        }
        return "success";
    }

    //查询待付款订单
    @RequestMapping("noPayById")
    String noPayById(int user_id,Model md) throws SQLException {
        List<Cart> carts = US.noPayById(user_id);
        md.addAttribute("carts",carts);
        return "nopaybyid";
    }

    //确认收货
    @RequestMapping("ConfirmReceipt")
    String ConfirmReceipt(int cart_id, Model md) throws SQLException {
        US.ConfirmReceipt(cart_id, 3);
        List<Cart> noEvaluation = US.noPay(user.getUser_id(), 3);
        md.addAttribute("noEvaluation", noEvaluation);
        return "noevaluation";
    }

    //删除地址
    @RequestMapping("delAddress")
    @ResponseBody
    List<String> delAddress(int address_id) throws SQLException {
        int i = US.delAddress(address_id);
        if (i == 0) {
            return error;
        } else {
            return success;
        }
    }

    //用户修改信息
    @RequestMapping("modifyMy")
    String modifyMy(MultipartFile file, String user_name, int user_id,String user_email, HttpSession session) throws SQLException, IOException {
        String filePath = "D:\\SSM_3CShop\\photo";//头像保存路径
        String user_photo = file.getOriginalFilename();//图面名
        File targetFile = new File(filePath, user_photo);//路径，名称
        file.transferTo(targetFile);//上传文件
        US.modifyMy(user_name, user_photo, user_id);
        User login = US.login(user_email);
        session.setAttribute("user", login);
        return "modifymy";
    }


    //产品评测
    @RequestMapping("test")
    String Test(int commodity_id, Model md) throws SQLException {
        List<Test_facade_photo> test_facade_photos = US.TEST_FACADE_PHOTOS(commodity_id);
        List<Test_photo_photo> test_photo_photos = US.TEST_PHOTO_PHOTOS(commodity_id);
        List<Test_property_photo> test_property_photos = US.TEST_PROPERTY_PHOTOS(commodity_id);
        List<Test_ui_photo> test_ui_photos = US.TEST_UI_PHOTOS(commodity_id);
        List<Test> tests = US.TESTS(commodity_id);
        md.addAttribute("tests", tests);
        md.addAttribute("test_ui_photos", test_ui_photos);
        md.addAttribute("test_property_photos", test_property_photos);
        md.addAttribute("test_photo_photos", test_photo_photos);
        md.addAttribute("test_facade_photos", test_facade_photos);
        return "test";
    }

    //生成图片验证码
    @RequestMapping("getVerifyCode")
    public void getVerificationCode(HttpServletResponse response, HttpServletRequest request) throws IOException {
        int width = 200;
        int height = 69;
        BufferedImage verifyImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        randomText = VerifyCode.drawRandomText(width, height, verifyImg);
        request.getSession().setAttribute("verifyCode", randomText);
        response.setContentType("image/png");//必须设置响应内容类型为图片，否则前台不识别
        OutputStream os = response.getOutputStream(); //获取文件输出流
        ImageIO.write(verifyImg, "png", os);//输出图片流
        os.flush();
        os.close();//关闭流
    }

    //验证验证码
    @RequestMapping("photocode")
    @ResponseBody
    public List<String> photocode(String code) throws SQLException {
        if (code.equals(randomText)) {
            return success;
        } else {
            List<String> msg = new ArrayList<String>();
            msg.add("验证码错误，请重新输入");
            return msg;
        }
    }

    //邮箱验证码
    @RequestMapping("emailCode")
    @ResponseBody
    public void sendEmail(String emailaddress) {
        //随机数验证码
        achieveCode = Code.achieveCode();
        try {
            HtmlEmail email = new HtmlEmail();//new一个class
            email.setHostName("smtp.163.com");//126邮箱为smtp.126.com，对应邮箱官网设置
            email.setCharset("UTF-8");
            email.addTo(emailaddress);// 收件地址
            email.setFrom("15510916240@163.com", "3C商城");//此处填邮箱地址和用户名,用户名可以任意填写
            email.setAuthentication("15510916240@163.com", "shangxuan1997");//此处填写邮箱地址和客户端授权码
            email.setSubject("3C商城");//此处填写邮件名，邮件名可任意填写
            email.setMsg("尊敬的用户您好,欢迎登录3C商城，本次登录的验证码为:" + achieveCode);//此处填写邮件内容
            email.send();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //购物车数量和价格
    @RequestMapping("numPrice")
    @ResponseBody
    void numPrice(int cart_id,int num,int user_id,int commodity_id, HttpSession session)throws SQLException{
        Cart num1 = US.num(cart_id);
        int num2 = num1.getNum();
        int nm = num2+num;
        Commodity commodity = US.COMMODITY_Detailed(commodity_id);
        int commodity_count = commodity.getCommodity_count();
        int numb=commodity_count-num;
        US.numMod(commodity_id, numb);
        int i = US.numPrice(cart_id, nm);
        System.out.println(i);

        List<String> list = US.publicCart(i, user_id, session);
    }

    //查询购物车
    @RequestMapping("cartBycommodity")
    @ResponseBody
    List<String> cartBycommodity(int commodity_id,int user_id,int commodity_color,String commodity_size) throws SQLException{
        Cart cart = US.cartBycommodity(commodity_id, user_id, commodity_color, commodity_size);
        if (cart==null){
            return success;
        }else {
            return error;
        }
    }
}
