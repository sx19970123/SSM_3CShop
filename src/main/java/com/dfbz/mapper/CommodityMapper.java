package com.dfbz.mapper;

import com.dfbz.po.*;
import org.apache.ibatis.annotations.Param;

import java.sql.SQLException;
import java.util.List;

public interface CommodityMapper {

    //管理员登录
    Ad_admin AdminLogin(@Param("admin_id") int admin_id, @Param("admin_pass") String admin_pass) throws SQLException;

    //查询全部管理员(已设置权限的)
    List<Ad_admin> AllAdmin() throws SQLException;

    //查询全部管理员(未设置权限的)
    List<Ad_admin> AllAdminNoRole() throws SQLException;

    //查询管理员权限
    List<Ad_role> AllRole() throws SQLException;

    //添加管理员
    int AddAdmin(Ad_admin ad_admin) throws SQLException;

    //删除管理员
    int DelAdmin(int admin_id) throws SQLException;

    //根据ID查询用户
    Ad_admin AdminById(int admin_id) throws SQLException;

    //根据ID查询已设置权限的用户
    Ad_admin RoleAdminById(int admin_id) throws SQLException;

    //修改管理员信息
    int AdminModify(Ad_admin ad_admin) throws SQLException;

    //修改管理员权限
    int RoleModify(Ad_control ad_control) throws SQLException;

    //添加管理员权限
    int RoleAdd(Ad_control ad_control) throws SQLException;

    //删除用户权限
    int RoleDes(int control_id) throws SQLException;

    //查询全部用户
    List<User> AllUser() throws SQLException;

    //查询全部商品
    List<Commodity> ALLCommodity(@Param("commodity_category_id") int commodity_category_id) throws SQLException;

    //查询分类
    List<Category> AllCategory() throws SQLException;

    //查询商品数量
    int Count() throws SQLException;

    //全部待发货
    List<Cart> AllNofa()throws SQLException;

    //发货
    int FA(Cart cart)throws SQLException;

    //根据B_C表BID,CID查询分类下有无品牌
    List<Brand> BrandName(@Param("brand_id") int brand_id,@Param("category_id") int category_id)throws SQLException;

    //根据品牌查询商品ID
    Brand BrandId(String brand_name)throws SQLException;

    //添加品牌
    int AddBrand(String brand_name) throws SQLException;

    //添加B_C关联表
    int AddB_C(@Param("brand_id") int brand_id,@Param("category_id") int category_id)throws SQLException;

    //添加商品（基本信息）
    int AddCommodity(Commodity commodity)throws SQLException;

    //根据ID分类查询
    Category CategoryById(int category_id)throws SQLException;

    //根据名称查询商品
    Commodity CommodityByName(String commodity_name)throws SQLException;

    //添加（修改）商品封面
    int AddPhoto(Commodity commodity)throws SQLException;

    //添加商品可选信息（颜色）
    int AddColor(Color color)throws SQLException;

    //添加商品可选信息（容量版本）
    int AddDisk(Size size)throws SQLException;

    //添加商品详情图
    int AddCommodityPhoto(Describe describe)throws SQLException;

    //删除商品（详情图）
    int DelPhoto(int commodity_id)throws SQLException;

    //删除商品（可选颜色）
    int DelColor(int commodity_id) throws SQLException;

    //删除商品（内存和价格）
    int DelDisk(int commodity_id) throws SQLException;

    //删除商品
    int DelCommodity(int commodity_id)throws SQLException;

    //查询CART表
    List<Cart> FindCartById(int commodity_id)throws SQLException;

    //查询商品（可选颜色）
    List<Color> ColorById(int commodity_id)throws SQLException;

    //查询商品（内存和价格）
    List<Size> DiskById(int commodity_id)throws SQLException;

    //查询商品
    Commodity CommodityById(int commodity_id)throws SQLException;

    //修改商品颜色
    int modifyColor(Color color)throws SQLException;

    //修改商品内存和价格
    int modifySize(Size size)throws SQLException;

    //修改商品信息
    int modifyCommodity(Commodity commodity) throws SQLException;

    //查询无评测商品
    List<Commodity> CommoditysNoTest() throws SQLException;

    //添加文字评测
    int addText(Test test) throws SQLException;

    //添加外观图片
    int addFacadePhoto(Test_facade_photo test_facade_photo) throws SQLException;

    //添加UI图片
    int addUIPhoto(Test_ui_photo test_ui_photo) throws SQLException;

    //添加性能图片
    int addPropertyPhoto(Test_property_photo test_property_photo) throws SQLException;

    //添加相机图片
    int addPhotoPhoto(Test_photo_photo test_photo_photo) throws SQLException;

    //删除评测
    int delText(int test_id)throws SQLException;
    int delFacadePhoto(int test_id)throws SQLException;
    int delUIPhoto(int test_id)throws SQLException;
    int delPropertyPhoto(int test_id)throws SQLException;
    int delPhotoPhoto(int test_id)throws SQLException;

    //删除详情图
    int delPhotos(int commdiity_id)throws SQLException;

    //全部订单
    List<Cart> AllAdminCart(@Param("state") int state)throws SQLException;

    //订单分类
    List<Order> allOrderType()throws SQLException;

    //查询全部待付款
    List<Cart> allNoPay() throws SQLException;




}
