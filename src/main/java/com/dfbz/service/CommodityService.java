package com.dfbz.service;

import com.dfbz.mapper.CommodityMapper;
import com.dfbz.po.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import javax.print.DocFlavor;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class CommodityService {

    @Autowired
    CommodityMapper CM;

    //管理员登录
    public Ad_admin AdminLogin(int admin_id,String admin_pass)throws SQLException {
        Ad_admin ad_admin = CM.AdminLogin(admin_id, admin_pass);
        return ad_admin;
    }

    //查询全部管理员(已设置权限)
    public List<Ad_admin> AllAdmin()throws SQLException {
        List<Ad_admin> ad_admins = CM.AllAdmin();
        return ad_admins;
    }

    //查询全部管理员（未设置权限）
    public List<Ad_admin> AllAdminNoRole()throws SQLException {
        List<Ad_admin> ad_admins = CM.AllAdminNoRole();
        return ad_admins;
    }

    //查询管理员权限
    public List<Ad_role> AllRole() throws SQLException{
        List<Ad_role> ad_roles = CM.AllRole();
        return ad_roles;
    }

    //添加管理员
    public int AddAdmin(String admin_name, String admin_pass)throws SQLException {
        Ad_admin ad_admin = new Ad_admin(admin_pass,admin_name);
        int i = CM.AddAdmin(ad_admin);
        return i;
    }

    //删除管理员
    public int DelAdmin(int admin_id)throws SQLException {
        int i = CM.DelAdmin(admin_id);
        return i;
    }

    //根据ID查询用户
    public Ad_admin AdminById(int admin_id) throws SQLException {
        Ad_admin ad_admin = CM.AdminById(admin_id);
        return ad_admin;
    }

    //根据ID查询已设置权限的用户
    public Ad_admin RoleAdminById(int admin_id)throws SQLException {
        Ad_admin ad_admin = CM.RoleAdminById(admin_id);
        return ad_admin;
    }

    //修改管理员信息
    public int AdminModify(int admin_id,String admin_pass,String admin_name)throws SQLException {
        Ad_admin ad_admin = new Ad_admin(admin_id,admin_pass,admin_name);
        int i = CM.AdminModify(ad_admin);
        return i;
    }
    //修改管理员权限
    public int RoleModify(int control_id,int role_id,int admin_id) throws SQLException {
        Ad_control ad_control = new Ad_control(control_id,role_id,admin_id);
        int i = CM.RoleModify(ad_control);
        return i;
    }

    //添加管理员权限
    public int RoleAdd(int contrlo_id,int role_id,int admin_id) throws SQLException {
        Ad_control ad_control = new Ad_control(contrlo_id,role_id,admin_id);
        int i = CM.RoleAdd(ad_control);
        return i;
    }

    //删除用户权限
    public int RoleDes(int contrlo_id) throws SQLException {
        int i = CM.RoleDes(contrlo_id);
        return i;
    }

    //查询全部用户
    public List<User> AllUser() throws SQLException {
        List<User> list = CM.AllUser();
        return list;
    }

    //查询全部商品
    public List<Commodity> AllCommodity(int commodity_category_id) throws SQLException {
        List<Commodity> commodities = CM.ALLCommodity(commodity_category_id);
        return commodities;
    }

    //查询分类
    public List<Category> AllCategory() throws SQLException{
        List<Category> categories = CM.AllCategory();
        return categories;
    }

    //商品数量
    public int Count()throws SQLException {
        int count = CM.Count();
        return count;
    }

    //查询全部待发货
    public List<Cart> AllNofa() throws SQLException {
        List<Cart> carts = CM.AllNofa();
        return carts;
    }

    //发货
    public int FA(int cart_id,int state,String courier_num)throws SQLException{
        Cart cart = new Cart(cart_id,state,courier_num);
        int fa = CM.FA(cart);
        return fa;
    }

    //根据B_C表BID,CID查询分类下有无品牌
    public List<Brand> BrandName(int brand_id, int category_id) throws SQLException{
        List<Brand> brand = CM.BrandName(brand_id, category_id);
        return brand;
    }

    //根据品牌ID查询品牌
    public Brand BrandId(String brand_name)throws SQLException{
        Brand brand = CM.BrandId(brand_name);
        return brand;
    }

    //添加品牌
    public int AddBrand(String brand_name) throws SQLException{
        int i = CM.AddBrand(brand_name);
        return i;
    }

    //添加到B_C
    public int AddB_C(int brand_id,int category_id)throws SQLException {
        int i = CM.AddB_C(brand_id, category_id);
        return i;
    }

    //根据ID分类查询
    public Category CategoryById(int category_id)throws SQLException{
        Category s = CM.CategoryById(category_id);
        return s;
    }

    //添加商品
    public int AddCommodity(String commodity_name,int commodity_price,int commodity_category_id,String commodity_category,int commodity_brand_id,String commodity_brand,String commodity_photo1,String commodity_photo2,String commodity_photo3) throws SQLException{
        String photo1 = "/images/"+commodity_photo1;
        String photo2 = "/images/"+commodity_photo2;
        String photo3 = "/images/"+commodity_photo3;
        Commodity commodity = new Commodity(commodity_name,commodity_price,commodity_category_id,commodity_brand_id,photo1,photo2,photo3,500,commodity_category,commodity_brand);
        int i = CM.AddCommodity(commodity);
        return i;
    }

    //根据商品name查询商品
    public Commodity CommodityByName(String commodity_name)throws SQLException {
        Commodity commodity = CM.CommodityByName(commodity_name);
        return commodity;
    }

    //添加（修改）封面
    public int AddPhoto(int commodity_id,String commodity_photo1,String commodity_photo2,String commodity_photo3) throws SQLException {
        Commodity commodity = new Commodity(commodity_id,commodity_photo1,commodity_photo2,commodity_photo3);
        int i = CM.AddPhoto(commodity);
        return i;
    }

    //添加商品封面
    public List<Commodity> AddPhoto(MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        String filePath = "D:\\SSM_3CShop\\photo";//头像保存路径
        String user_photo1 = file1.getOriginalFilename();//图面名
        String user_photo2 = file2.getOriginalFilename();//图面名
        String user_photo3 = file3.getOriginalFilename();//图面名
        File targetFile1 = new File(filePath, user_photo1);//路径，名称
        File targetFile2 = new File(filePath, user_photo2);//路径，名称
        File targetFile3 = new File(filePath, user_photo3);//路径，名称
        file1.transferTo(targetFile1);//上传文件
        file2.transferTo(targetFile2);//上传文件
        file3.transferTo(targetFile3);//上传文件
        Commodity commodity = new Commodity();
        commodity.setCommodity_photo1(user_photo1);
        commodity.setCommodity_photo2(user_photo2);
        commodity.setCommodity_photo3(user_photo3);
        List<Commodity> commodities = new ArrayList<Commodity>();
        commodities.add(commodity);
        return commodities;
    }

    //添加商品共用代码
    public String AddCommodityPublic(int brand_id, int category_id, MultipartFile file1, MultipartFile file2, MultipartFile file3, String commodity_name, int commodity_price, String category_name, String brand, Model md) throws SQLException, IOException {
        List<Commodity> commodities = this.AddPhoto(file1, file2, file3);
        for (Commodity commoditie:commodities) {
            String commodity_photo1 = commoditie.getCommodity_photo1();
            String commodity_photo2 = commoditie.getCommodity_photo2();
            String commodity_photo3 = commoditie.getCommodity_photo3();
            this.AddCommodity(commodity_name, commodity_price, category_id, category_name, brand_id, brand, commodity_photo1, commodity_photo2, commodity_photo3);//添加商品
            List<Category> categories = this.AllCategory();
            Commodity commodity = this.CommodityByName(commodity_name);
            md.addAttribute("categories", categories);
            md.addAttribute("commodity", commodity);
        }
        return "commodity";
    }

    //添加商品可选信息（颜色）
    public int AddColor(int commodity_id,String color) throws SQLException {
        Color color1 = new Color(commodity_id,color);
        int i = CM.AddColor(color1);
        return i;
    }

    //添加商品可选信息（内存）
    public int AddDisk(int commodity_id,String disk,int price)throws SQLException {
        Size size = new Size(0,commodity_id,disk,price);
        int i = CM.AddDisk(size);
        return i;
    }

    //添加详情图
    public int AddCommodityPhoto(int commodity_id,String commodity_describe)throws SQLException{
        String c = "/describe/"+commodity_describe;
        Describe describe = new Describe(0,commodity_id,c);
        int i = CM.AddCommodityPhoto(describe);
        return i;
    }

    //删除商品
    public void DelCommodity(int commodity_id)throws SQLException {
        CM.DelColor(commodity_id);
        System.out.println("color");
        CM.DelPhoto(commodity_id);

        CM.DelDisk(commodity_id);
        System.out.println("disk");
        CM.DelCommodity(commodity_id);
    }

    //查询CART表
    public List<Cart> FindCartById(int commodity_id) throws SQLException {
        List<Cart> carts = CM.FindCartById(commodity_id);
        return carts;
    }


    //查询商品（可选颜色）
    public List<Color> ColorById(int commodity_id)throws SQLException {
        List<Color> color = CM.ColorById(commodity_id);
        return color;
    }

    //查询商品（内存和价格）
    public  List<Size> DiskById (int commodity_id)throws SQLException {
        List<Size> size = CM.DiskById(commodity_id);
        return size;
    }

    //查询商品
    public Commodity CommodityById(int commodity_id)throws SQLException {
        Commodity commodity = CM.CommodityById(commodity_id);
        return commodity;
    }

    //修改商品颜色
    public int modifyColor(int cid,String color) throws SQLException{
        Color color1 = new Color(cid,0,color,0);
        int i = CM.modifyColor(color1);
        return i;
    }
    //修改商品内存和价格
    public int modifySize(int did,int price) throws SQLException{
        Size size = new Size(did,0,null,price);
        int i = CM.modifySize(size);
        return i;
    }
    //修改商品信息
    public int modifyCommodity(int commodity_id,String commodity_brand,String commodity_name,int commodity_brand_id,int commodity_price,int commodity_count) throws SQLException{
        Commodity commodity = new Commodity(commodity_id,commodity_name,commodity_price,commodity_brand_id,commodity_brand,commodity_count);
        int i = CM.modifyCommodity(commodity);
        return i;
    }

    //查询无评测商品
    public List<Commodity> CommoditysNoTest() throws SQLException{
        List<Commodity> commodities = CM.CommoditysNoTest();
        return commodities;
    }


    //添加文字评测
    public int addText(int commodity_id,String test_facade_body,String test_ui_body,String test_property_body,String test_photo_body,String test_over_body) throws SQLException {

        Test test = new Test(commodity_id,commodity_id,test_facade_body,test_ui_body,test_property_body,test_photo_body,test_over_body,null);
        int i = CM.addText(test);
        return i;

    }

    //添加外观图片
    public int addFacadePhoto(int commodity_id,String test_facade_photo) throws SQLException {
        Test_facade_photo test_facade_photo1 = new Test_facade_photo(0,commodity_id,test_facade_photo);
        int i = CM.addFacadePhoto(test_facade_photo1);
        return i;
    }

    //添加UI图片
    public int addUIPhoto(int commodity_id,String test_ui_photo) throws SQLException {
        Test_ui_photo test_ui_photo1 = new Test_ui_photo(0,commodity_id,test_ui_photo);
        int i = CM.addUIPhoto(test_ui_photo1);
        return i;
    }

    //添加性能图片
    public int addPropertyPhoto(int commodity_id,String test_property_photo) throws SQLException {
        Test_property_photo test_property_photo1 = new Test_property_photo(0,commodity_id,test_property_photo);
        int i = CM.addPropertyPhoto(test_property_photo1);
        return i;
    }

    //添加相机图片
    public int addPhotoPhoto(int commodity_id,String test_photo_photo) throws SQLException {
        Test_photo_photo test_photo_photo1 = new Test_photo_photo(0,commodity_id,test_photo_photo);
        int i = CM.addPhotoPhoto(test_photo_photo1);
        return i;

    }

    //删除评测
    public int DelTest(int test_id)throws SQLException{
        CM.delFacadePhoto(test_id);
        CM.delUIPhoto(test_id);
        CM.delPropertyPhoto(test_id);
        CM.delPhotoPhoto(test_id);
        CM.delText(test_id);
        return 1;
    }

    //删除详情图
    public int delPhotos(int commodity_id)throws SQLException{
        int i = CM.delPhotos(commodity_id);
        return i;
    }

    //全部订单
    public List<Cart> AllAdminCart(int state)throws SQLException{
        List<Cart> carts = CM.AllAdminCart(state);
        return carts;
    }

    //全部订单分类
    public List<Order> allOrderType()throws SQLException{
        List<Order> orders = CM.allOrderType();
        return orders;
    }

    //查询全部待付款
    public List<Cart> allNoPay()throws SQLException {
        List<Cart> carts = CM.allNoPay();
        return carts;
    }



}
