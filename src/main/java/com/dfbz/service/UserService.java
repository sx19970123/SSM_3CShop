package com.dfbz.service;

import com.dfbz.mapper.UserMapper;
import com.dfbz.po.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.math.BigInteger;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;


@Service
public class UserService {

    @Autowired
    UserMapper UM;

    List<String> success = new ArrayList<String>();
    List<String> error = new ArrayList<String>();

    {
        success.add("success");
        error.add("error");
    }

    //用户登录
    public User login(String user_email) throws SQLException {
        User login = UM.login(user_email);
        return login;
    }

    //添加用户
    public int AddUser(String user_email) throws SQLException {
        User user = new User(0, user_email, null, "未设置", null, user_email);
        int i = UM.AddUser(user);
        return i;
    }

    //用户登录判断重复代码
    public List<String> publicUser(String user_email, HttpSession session) throws SQLException {
        List<Cart> carts = this.allCart(this.login(user_email).getUser_id());
        Count count = this.count(this.login(user_email).getUser_id());
        session.setAttribute("user", this.login(user_email));
        session.setAttribute("carts", carts);
        session.setAttribute("count", count);
        String user_name = this.login(user_email).getUser_name();
        List<String> name = new ArrayList<String>();
        name.add(user_name);
        return name;
    }

    //查询全部用户
    public User AllUser() throws SQLException {
        User user = UM.AllUser();
        return user;
    }

    //主页四个手机
    public List<Commodity> IndexPhone() throws SQLException {
        List<Commodity> commodity = UM.IndexPhone();
        return commodity;
    }

    //主页推荐Switch
    public List<Commodity> IndexGame() throws SQLException {
        List<Commodity> commodities = UM.IndexGame();
        return commodities;
    }

    //主页推荐笔记本
    public List<Commodity> IndexLaptop() throws SQLException {
        List<Commodity> commodities = UM.IndexLaptop();
        return commodities;
    }

    //显示商品分类
    public Category Category(int category_id) throws SQLException {
        Category category = UM.CATEGORY(category_id);
        return category;
    }

    //全部商品
    public List<Commodity> ALLCommodity(int commodity_category_id) throws SQLException {
        List<Commodity> commodities = UM.ALLCommodity(commodity_category_id);
        return commodities;
    }

    //品牌
    public List<Brand> Brands(int commodity_category_id) throws SQLException {
        List<Brand> brands = UM.Brands(commodity_category_id);
        return brands;
    }

    //根据品牌筛选商品
    public List<Commodity> Brand_Commodity(int commodity_category_id, int brand_id) throws SQLException {
        List<Commodity> commodities = UM.Brand_Commodity(commodity_category_id, brand_id);
        return commodities;
    }

    //根据ID显示商品详情
    public Commodity COMMODITY_Detailed(int commodity_id) throws SQLException {
        Commodity commodity = UM.COMMODITY_Detailed(commodity_id);
        return commodity;
    }

    //商品选择属性
    public List<Size> Size_color(int commodity_id) throws SQLException {
        List<Size> size_color = UM.Size_color(commodity_id);
        return size_color;
    }

    public List<Size> Size_disk(int commodity_id) throws SQLException {
        List<Size> size_disk = UM.Size_disk(commodity_id);
        return size_disk;
    }

    //根据产品属性显示价格
    public Size PriceBySize(int commodity_id, String disk) throws SQLException {
        Size price = UM.PriceBySize(commodity_id, disk);
        return price;
    }


    //查询商品评价
    public List<Comment> Comment_ByID(int commodity_id) throws SQLException {
        List<Comment> Comment_ByID = UM.Comment_ByID(commodity_id);
        return Comment_ByID;
    }

    //商品详情
    public List<Describe> Describe(int commodity_id) throws SQLException {
        List<Describe> describe = UM.Describe(commodity_id);
        return describe;
    }

    //产品评测
    public List<Test> TESTS(int commodity_id) throws SQLException {
        List<Test> tests = UM.TESTS(commodity_id);
        return tests;
    }

    public List<Test_facade_photo> TEST_FACADE_PHOTOS(int commodity_id) throws SQLException {
        List<Test_facade_photo> test_facade_photos = UM.TEST_FACADE_PHOTOS(commodity_id);
        return test_facade_photos;
    }

    public List<Test_photo_photo> TEST_PHOTO_PHOTOS(int commodity_id) throws SQLException {
        List<Test_photo_photo> test_photo_photos = UM.TEST_PHOTO_PHOTOS(commodity_id);
        return test_photo_photos;
    }

    public List<Test_property_photo> TEST_PROPERTY_PHOTOS(int commodity_id) throws SQLException {
        List<Test_property_photo> test_property_photos = UM.TEST_PROPERTY_PHOTOS(commodity_id);
        return test_property_photos;
    }

    public List<Test_ui_photo> TEST_UI_PHOTOS(int commodity_id) throws SQLException {
        List<Test_ui_photo> test_ui_photos = UM.TEST_UI_PHOTOS(commodity_id);
        return test_ui_photos;
    }

    //添加到购物车
    public int addCatr(int user_id, int commodity_id, int commodity_price, String commodity_color, String commodity_size) throws SQLException {
        Cart cart = new Cart(0, commodity_id, user_id, commodity_color, commodity_size, commodity_price);
        int i = UM.addCart(cart);
        return i;
    }

    //直接购买
    public int addpay(int user_id, int commodity_id, int commodity_price, String commodity_color, String commodity_size) throws SQLException {
        Cart cart = new Cart(0, commodity_id, user_id, commodity_color, commodity_size, commodity_price);
        int i = UM.addpay(cart);
        return i;
    }

    //查询购物车
    public List<Cart> allCart(int user_id) throws SQLException {
        List<Cart> carts = UM.allCart(user_id);
        return carts;
    }


    //查询购物车总商品和价格
    public Count count(int user_id) throws SQLException {
        Count count = UM.count(user_id);
        return count;
    }

    //删除购物车内容
    public int cartDel(int cart_id) throws SQLException {
        int i = UM.cartDel(cart_id);
        return i;
    }


    //查询购物车内容，数量，总金额的公共代码
    public List<String> publicCart(int i, int user_id, HttpSession session) throws SQLException {
        if (i != 0) {
            List<Cart> carts = this.allCart(user_id);
            System.out.println(carts);
            Count count = this.count(user_id);
            session.setAttribute("carts", carts);
            session.setAttribute("count", count);
            return success;
        } else {
            return error;
        }
    }

    //查询用户收货地址
    public List<Address> addRess(int user_id) throws SQLException {
        List<Address> addresses = UM.addRess(user_id);
        return addresses;
    }


    //添加评论
    public int addComment(String comment_type, String comment, int user_id, int commodity_id) throws SQLException {
        int i = UM.addComment(comment_type, comment, user_id, commodity_id);
        return i;
    }

    //点击去付款后将用户地址添加到cart表
    public int addRessInCart(int user_id, int address_id) throws SQLException {
        int i = UM.addRessInCart(user_id, address_id);
        return i;
    }

    public int addRessInCartbyId(int user_id, int address_id,int cart_id)throws SQLException {
        int i = UM.addRessInCartbyId(user_id, address_id, cart_id);
        return i;
    }

    //状态订单
    public List<Cart> noPay(int user_id, int state) throws SQLException {
        List<Cart> carts = UM.noPay(user_id, state);
        return carts;
    }

    //待发货订单
    public List<Cart> nofa(int user_id, int state) throws SQLException {
        List<Cart> carts = UM.nofa(user_id, state);
        return carts;
    }

    //全部订单
    public List<Cart> allOrders(int user_id) throws SQLException {
        List<Cart> carts = UM.allOrders(user_id);
        return carts;
    }

    //在我的订单中支付
    public Count countByCart_id(int cart_id) throws SQLException {
        Count count = UM.countByCart_id(cart_id);
        return count;
    }

    //改变订单状态
    public int modifyOrders(int user_id, int state) throws SQLException {
        int i = UM.modifyOrders(user_id, state);
        return i;
    }

    public int modifyOrdersById(int user_id, int state,int cart_id) throws SQLException {
        int i = UM.modifyOrdersById(user_id, state, cart_id);
        return i;
    }

    //确认收货
    public int ConfirmReceipt(int cart_id, int state) throws SQLException {
        int i = UM.ConfirmReceipt(cart_id, state);
        return i;
    }

    //删除地址
    public int delAddress(int address_id) throws SQLException {
        int i = UM.delAddress(address_id);
        return i;
    }

    //添加地址
    public int addAdderss(int user_id, BigInteger user_phone, String address, String name) throws SQLException {
        Address address1 = new Address(0, user_id, user_phone, address, name);
        int i = UM.addAdderss(address1);
        return i;
    }

    //修改信息
    public int modifyMy(String user_name, String user_photo, int user_id) throws SQLException {
        String user_photo1="/images/"+user_photo;
        User user = new User(user_id, user_name, null, null, user_photo1, null);
        int i = UM.modifyMy(user);
        return i;
    }

    //查询用户最新下单的商品
    public List<Cart> max_commodity(int user_id) throws SQLException{
        List<Cart> cart = UM.max_commodity(user_id);
        return cart;
    }

    //查询待付款订单
    public List<Cart> noPayById(int user_id)throws SQLException{
        List<Cart> carts = UM.noPayById(user_id);
        return carts;
    }
    //根据购物车ID查询未支付订单
    public List<Cart> noPayByCartId(int user_id,int cart_id) throws SQLException{
        List<Cart> carts = UM.noPayByCartId(user_id, cart_id);
        return carts;
    }

    //购买减少库存
     public int numMod(int commodity_id,int numb)throws SQLException{
         int i = UM.numMod(commodity_id,numb);
         return i;
     }

    /* //购物车数量
    public int numCart(int cart_id,int num)throws SQLException{
        int i = UM.numCart(cart_id, num);
        return i;
    }*/

    //购物车数量和价格
    public int numPrice(int cart_id,int num)throws SQLException{
        int i = UM.numPrice(cart_id, num);
        return i;
    }

    //购物车数量
    public Cart num(int cart_id) throws SQLException {
        Cart num = UM.num(cart_id);
        return num;
    }

    //查询购物车
    public Cart cartBycommodity(int commodity_id,int user_id,int commodity_color,String commodity_size)throws SQLException {
        System.out.println(commodity_id+"//"+user_id+"//"+commodity_color+"//"+commodity_size);
        Cart cart = UM.cartBycommodity(commodity_id, user_id, commodity_color, commodity_size);
        System.out.println("这里是"+cart);
        return cart;
    }


}
