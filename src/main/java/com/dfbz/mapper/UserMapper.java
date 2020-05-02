package com.dfbz.mapper;

import com.dfbz.po.*;
import org.apache.ibatis.annotations.Param;

import java.sql.SQLException;
import java.util.List;

public interface UserMapper {

    //用户根据邮箱登录
    User login(String user_email) throws SQLException;

    //查询全部用户
    User AllUser() throws SQLException;

    //添加用户
    int AddUser(User user) throws SQLException;

    //主页四个手机
    List<Commodity> IndexPhone() throws SQLException;

    //推荐主机
    List<Commodity> IndexGame() throws SQLException;

    //主页四个笔记本
    List<Commodity> IndexLaptop() throws SQLException;

    //全部商品页面--------------------------------------------------------------
    //商品类别显示
    Category CATEGORY(int category_id) throws SQLException;

    //类别下全部商品显示
    List<Commodity> ALLCommodity(int commodity_category_id) throws SQLException;

    //查询类别下品牌
    List<Brand> Brands(int commodity_category_id) throws SQLException;

    //根据品牌筛选商品
    List<Commodity> Brand_Commodity(@Param("commodity_category_id") int commodity_category_id, @Param("brand_id") int brand_id) throws SQLException;

    //根据产品ID查询产品详情
    Commodity COMMODITY_Detailed(int commodity_id) throws SQLException;

    //查询商品可选属性
    List<Size> Size_color(int commodity_id) throws SQLException;
    List<Size> Size_disk(int commodity_id) throws SQLException;
    //根据产品属性显示价格
    Size PriceBySize(@Param("commodity_id") int commodity_id,@Param("disk") String disk) throws SQLException;

    //查询商品评价
    List<Comment> Comment_ByID(int commodity_id) throws SQLException;

    //显示商品详情
    List<Describe> Describe(int commodity_id) throws SQLException;

    //产品评测
    List<Test> TESTS(int commodity_id) throws SQLException;
    List<Test_facade_photo> TEST_FACADE_PHOTOS(int commodity_id) throws SQLException;
    List<Test_photo_photo> TEST_PHOTO_PHOTOS(int commodity_id) throws SQLException;
    List<Test_property_photo> TEST_PROPERTY_PHOTOS(int commodity_id) throws SQLException;
    List<Test_ui_photo> TEST_UI_PHOTOS(int commodity_id) throws SQLException;

    //添加到购物车
    int addCart(Cart cart)throws SQLException;

    //直接购买
    int adCart(Cart cart)throws SQLException;

    //查询购物车
    List<Cart> allCart(int user_id)throws SQLException;

    //显示商品信息
    Cart goCart(int user_id)throws SQLException;

    //查询购物车商品数量和总金额
    Count count(int user_id) throws SQLException;

    //删除购物车
    int cartDel(int cart_id) throws SQLException;


    //查询用户收货地址
    List<Address> addRess(int user_id) throws SQLException;

    //添加评论
    int addComment(@Param("comment_type") String comment_type,@Param("comment")String comment,@Param("user_id")int user_id,@Param("commodity_id")int commodity_id) throws SQLException;

    //点击去付款后将用户地址添加到cart表
    int addRessInCart(@Param("user_id") int user_id,@Param("address_id") int address_id)throws SQLException;

    int addRessInCartbyId(@Param("user_id") int user_id,@Param("address_id") int address_id,@Param("cart_id")int cart_id) throws SQLException;

    //状态订单
    List<Cart> noPay(@Param("user_id") int user_id,@Param("state") int state) throws SQLException;

    //查询全部订单
    List<Cart> allOrders(int user_id)throws SQLException;

    //在我的订单中支付
    Count countByCart_id(int cart_id)throws SQLException;

    //改变订单状态
    int modifyOrders(@Param("user_id") int user_id,@Param("state") int state) throws SQLException;

    int modifyOrdersById(@Param("user_id") int user_id,@Param("state") int state,@Param("cart_id")int cart_id) throws SQLException;

    //待发货订单
    List<Cart> nofa(@Param("user_id") int user_id,@Param("state") int state) throws SQLException;

    //确认收货
    int ConfirmReceipt(@Param("cart_id") int cart_id,@Param("state") int state) throws SQLException;

    //删除地址
    int delAddress(int address_id)throws SQLException;

    //用户添加地址
    int addAdderss(Address address)throws SQLException;

    //用户修改信息
    int modifyMy(User user) throws SQLException;

    //直接购买
    int addpay(Cart cart) throws SQLException;

    //查询用户最新下单的商品
    List<Cart> max_commodity(int user_id) throws SQLException;

    //查询待付款订单
    List<Cart> noPayById(int user_id) throws SQLException;

    //根据购物车ID查询未支付订单
    List<Cart> noPayByCartId(@Param("user_id") int user_id,@Param("cart_id") int cart_id) throws SQLException;




    //购买减少库存
    int numMod(@Param("commodity_id") int commodity_id,@Param("numb") int numb)throws SQLException;

    //修改购物车数量和价格
    int numPrice(@Param("cart_id") int cart_id,@Param("num") int num)throws SQLException;

    //查询购物车数量
    Cart num(int cart_id);

    //查询购物车
    Cart cartBycommodity(@Param("commodity_id") int commodity_id,@Param("user_id")int user_id,@Param("commodity_color")int commodity_color,@Param("commodity_size")String commodity_size)throws SQLException;

/*

    //通过购物车数量
    int numCart(@Param("cart_id") int cart_id,@Param("num") int num)throws SQLException;
*/





}
