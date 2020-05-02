package com.dfbz.controller;

import com.alibaba.fastjson.JSON;
import com.dfbz.po.*;
import com.dfbz.service.CommodityService;
import com.dfbz.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CommodityController {

    @Autowired
    CommodityService CS;
    @Autowired
    UserService US;


    //管理员根据权限登录
    @RequestMapping("AdminLogin")
    String AdminLogin(int admin_id, String admin_pass, Model md, HttpSession session) throws SQLException {
        Ad_admin ad_admin = CS.AdminLogin(admin_id, admin_pass);
        if (ad_admin != null) {
            if (ad_admin.getRole_id() == 1) {
                //超级管理员
                this.AllAdmin(md, session);
                return "admin";
            } else if (ad_admin.getRole_id() == 2) {
                //用户管理员
                this.AllUser(1, md);
                return "admin_user";
            } else if (ad_admin.getRole_id() == 3) {
                //商品管理员
                this.AllCommodity(0, 1, md);
                return "admin_commodity";
            }else if (ad_admin.getRole_id() == 5) {
                this.CommoditysNoTest(1,md);
                return "test_commodity";
            } else {
                //密码错误
                return "login";
            }
        } else {
            return "login";
        }
    }

    //查询全部管理员
    @RequestMapping("AllAdmin")
    String AllAdmin(Model md, HttpSession session) throws SQLException {
        List<Ad_admin> ad_admins = CS.AllAdmin();
        List<Ad_admin> ad_admins1 = CS.AllAdminNoRole();
        List<Ad_role> ad_roles = CS.AllRole();
        md.addAttribute("ad_admins", ad_admins);
        md.addAttribute("ad_admins1", ad_admins1);
        session.setAttribute("ad_roles", ad_roles);
        return "admin";
    }


    //添加管理员
    @RequestMapping("AddAdmin")
    String AddAdmin(String admin_name, String admin_pass, Model md, HttpSession session) throws SQLException {
        CS.AddAdmin(admin_name, admin_pass);
        this.AllAdmin(md, session);
        return "admin";
    }

    //删除管理员
    @RequestMapping("DelAdmin")
    String DelAdmin(int admin_id, Model md, HttpSession session) throws SQLException {
        int i = CS.DelAdmin(admin_id);
        this.AllAdmin(md, session);
        return "admin";
    }

    //根据ID查询用户（未设置权限）
    @RequestMapping(value = "AdminById", produces = "text/plain;charset=UTF-8")
    @ResponseBody
    String AdminById(int admin_id) throws SQLException {
        Ad_admin ad_admin = CS.AdminById(admin_id);
        String msg = JSON.toJSONString(ad_admin);
        return msg;
    }

    //根据ID查询用户(已设置权限)
    @RequestMapping(value = "RoleAdminById", produces = "text/plain;charset=UTF-8")
    @ResponseBody
    String RoleAdminById(int admin_id) throws SQLException {
        Ad_admin ad_admin = CS.RoleAdminById(admin_id);
        String msg = JSON.toJSONString(ad_admin);
        return msg;
    }

    //修改用户
    @RequestMapping("AdminModify")
    String AdminModify(int admin_id, String admin_pass, String admin_name, Integer control_id, Integer role_id, Model md, HttpSession session) throws SQLException {
        CS.AdminModify(admin_id, admin_pass, admin_name);
        if (role_id == 666) {
            CS.RoleDes(control_id);
            this.AllAdmin(md, session);
            return "admin";
        } else if (role_id == 999) {
            this.AllAdmin(md, session);
            return "admin";
        } else if (control_id == 0) {
            CS.RoleAdd(0, role_id, admin_id);
            this.AllAdmin(md, session);
            return "admin";
        } else {
            CS.RoleModify(control_id, role_id, admin_id);
            this.AllAdmin(md, session);
            return "admin";
        }
    }

    //查询全部用户
    @RequestMapping("AllUser")
    String AllUser(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model md) throws SQLException {
        PageHelper.startPage(pn, 5);
        List<User> users = CS.AllUser();
        PageInfo page = new PageInfo(users, 5);
        md.addAttribute("page", page);
        return "admin_user";
    }

    //查询全部商品
    @RequestMapping("AllCommodity")
    String AllCommodity(int commodity_category_id, @RequestParam(value = "pn", defaultValue = "1") Integer pn, Model md) throws SQLException {
        PageHelper.startPage(pn, 5);
        List<Commodity> commodities = CS.AllCommodity(commodity_category_id);
        PageInfo page = new PageInfo(commodities, 5);
        List<Category> categories = CS.AllCategory();
        md.addAttribute("categories", categories);
        md.addAttribute("commodities", page);
        md.addAttribute("commodity_category_id", commodity_category_id);
        return "admin_commodity";
    }

    //查询待发货订单
    @RequestMapping("AllNofa")
    String AllNofa(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model md) throws SQLException {
        PageHelper.startPage(pn, 5);
        List<Cart> carts = CS.AllNofa();
        PageInfo page = new PageInfo(carts, 5);
        md.addAttribute("users", page);
        return "user_commodity";
    }

    //发货
    @RequestMapping("FA")
    String FA(int cart_id, String courier_num, Model md) throws SQLException {
        CS.FA(cart_id, 2, courier_num);
        this.AllNofa(1, md);
        return "user_commodity";
    }

    //读取分类
    @RequestMapping("Category")
    String Category(Model md) throws SQLException {
        List<Category> categories = CS.AllCategory();
        md.addAttribute("categories", categories);
        return "commodity";
    }


    //添加商品基本信息
    @RequestMapping("AddCommodity")
    String AddCommodity(int category_id, String brand, String commodity_name, int commodity_price, MultipartFile file1, MultipartFile file2, MultipartFile file3, Model md) throws SQLException, IOException {
        System.out.println("zxc");
        Brand brand1 = CS.BrandId(brand);  //查询输入品牌是否存入数据库
        Category category = CS.CategoryById(category_id);  //根据类别ID查询类名
        String category_name = category.getCategory_name();//根据类别ID查询类名
        Commodity commodity = CS.CommodityByName(commodity_name);
        if (commodity==null){
            if (brand1 == null) { //判断是否存入数据库
                CS.AddBrand(brand);//存入数据库
                Brand brand2 = CS.BrandId(brand);//查询一遍
                int i = CS.AddB_C(brand2.getBrand_id(), category_id);
                int brand_id = brand2.getBrand_id();
                CS.AddCommodityPublic(brand_id, category_id, file1, file2, file3, commodity_name, commodity_price, category_name, brand, md);
                return "commodity";
            } else {
                Brand brand2 = CS.BrandId(brand);
                List<Brand> Brand3 = CS.BrandName(brand2.getBrand_id(), category_id); //判断是否添加连接
                if (Brand3.size()==0) {
                    CS.AddB_C(brand2.getBrand_id(), category_id);
                    int brand_id = brand2.getBrand_id();
                    CS.AddCommodityPublic(brand_id, category_id, file1, file2, file3, commodity_name, commodity_price, category_name, brand, md);
                    return "commodity";
                } else {
                    int brand_id = brand2.getBrand_id();
                    CS.AddCommodityPublic(brand_id, category_id, file1, file2, file3, commodity_name, commodity_price, category_name, brand, md);
                    return "commodity";
                }
            }
        }else {
            this.Category(md);
            return "commodity";
        }
    }

    //添加商品颜色
    @RequestMapping("AddColor")
    @ResponseBody
    String AddColor(int commodity_id,String color)throws SQLException {
        CS.AddColor(commodity_id, color);
        return "success";
    }

    @RequestMapping("AddDisk")
    @ResponseBody
    String AddDisk(int commodity_id,String disk,int price) throws SQLException {
        CS.AddDisk(commodity_id,disk,price);
        return "success";
    }

    //添加商品详情图
    @RequestMapping("AddCommodityPhoto")
    @ResponseBody
    String AddCommodityPhoto(MultipartFile photoFile,Integer commodity_id,Model md) throws SQLException, IOException {
        String filePath = "D:\\SSM_3CShop\\describe";
        String originalFilename = photoFile.getOriginalFilename();
        File targetFile1 = new File(filePath, originalFilename);
        photoFile.transferTo(targetFile1);
        CS.AddCommodityPhoto(commodity_id,originalFilename);
        String msg = "/describe/"+originalFilename;
        md.addAttribute("DID",1);
        return msg;
    }

    //删除商品
    @RequestMapping("DelCommodity")
    @ResponseBody
    String DelCommodity(Integer commodity_id)throws SQLException {
        List<Cart> carts = CS.FindCartById(commodity_id);
        System.out.println(carts.size());
        if (carts.size()==0){
            int i = CS.delPhotos(commodity_id);
            System.out.println(i+"a");
            CS.DelTest(commodity_id);
            System.out.println(i+"b");
            CS.DelCommodity(commodity_id);
            System.out.println(i+"c");
            return "success";
        }else {
            return "error";
        }
    }

    //根据ID查询各种商品
    @RequestMapping("CommodityById")
    String CommodityById(int commodity_id, Model md) throws SQLException{
        Commodity commodity = CS.CommodityById(commodity_id);
        List<Color> color = CS.ColorById(commodity_id);
        List<Size> disk = CS.DiskById(commodity_id);
        md.addAttribute("disks",disk);
        md.addAttribute("colors",color);
        md.addAttribute("commodity",commodity);
        return "commodity_m";
    }

    //修改商品信息
    @RequestMapping("modifyCommodity")
    @ResponseBody
    String modifyCommodity(int commodity_id,String commodity_brand,String commodity_name,int commodity_price,int commodity_count) throws SQLException{
        Brand brand = CS.BrandId(commodity_brand);
        int i = CS.modifyCommodity(commodity_id, commodity_brand, commodity_name,  brand.getBrand_id(), commodity_price,commodity_count);
        if (i!=0){
            return "success";
        }else {
            return "error";
        }

    }

    //修改商品颜色
    @RequestMapping("modifyColor")
    String modifyColor(int cid,String color,int commodity_id,Model md) throws SQLException{
        int i = CS.modifyColor(cid, color);
        this.CommodityById(commodity_id,md);
         return "commodity_m";
    }

    //修改商品内存价格
    @RequestMapping("modifySize")
    String modifySize(int did,int price,int commodity_id,Model md) throws SQLException{
        int i = CS.modifySize(did, price);
        this.CommodityById(commodity_id,md);
        return "commodity_m";
    }

    //查询无评测商品
    @RequestMapping("CommoditysNoTest")
    String CommoditysNoTest(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model md) throws SQLException {
        PageHelper.startPage(pn, 5);
        List<Commodity> commoditiesTest = CS.CommoditysNoTest();
        PageInfo page = new PageInfo(commoditiesTest, 5);
        md.addAttribute("commoditiesTest",page);
        return "test_commodity";
    }

    //添加评测页面
    @RequestMapping("AddTestPage")
    String AddTestPage(int commodity_id,Model md) throws SQLException {
        md.addAttribute("commodity_id",commodity_id);
        return "add_test";
    }

    //添加文字评测
    @RequestMapping("addText")
    String addText(int commodity_id,String test_facade_body,String test_ui_body,String test_property_body,String test_photo_body,String test_over_body,Model md) throws SQLException {
        CS.addText(commodity_id, test_facade_body, test_ui_body, test_property_body, test_photo_body, test_over_body);
        md.addAttribute("commodity_id",commodity_id);
        return "add_test";
    }

    //添加外观图片
    @RequestMapping("addFacadePhoto")
    @ResponseBody
    String addFacadePhoto(int commodity_id,MultipartFile test_facade_photo) throws SQLException, IOException {
        String filePath = "D:\\SSM_3CShop\\test";
        String originalFilename = test_facade_photo.getOriginalFilename();
        File targetFile1 = new File(filePath, originalFilename);
        test_facade_photo.transferTo(targetFile1);
        String photo ="/test/"+originalFilename;
        int i = CS.addFacadePhoto(commodity_id,photo);
        if (i!=0){
            return "success";
        }else {
            return "error";
        }
    }

    //添加UI图片
    @RequestMapping("addUIPhoto")
    @ResponseBody
    String addUIPhoto(int commodity_id,MultipartFile test_ui_photo) throws SQLException, IOException {
        String filePath = "D:\\SSM_3CShop\\test";
        String originalFilename = test_ui_photo.getOriginalFilename();
        File targetFile1 = new File(filePath, originalFilename);
        test_ui_photo.transferTo(targetFile1);

        String photo ="/test/"+originalFilename;
        int i = CS.addUIPhoto(commodity_id,photo);
        if (i!=0){
            return "success";
        }else {
            return "error";
        }
    }

    //添加性能图片
    @RequestMapping("addPropertyPhoto")
    @ResponseBody
    String addPropertyPhoto(int commodity_id,MultipartFile test_property_photo) throws SQLException, IOException {
        String filePath = "D:\\SSM_3CShop\\test";
        String originalFilename = test_property_photo.getOriginalFilename();
        File targetFile1 = new File(filePath, originalFilename);
        test_property_photo.transferTo(targetFile1);
        String photo ="/test/"+originalFilename;

        int i = CS.addPropertyPhoto(commodity_id, photo);
        if (i!=0){
            return "success";
        }else {
            return "error";
        }
    }

    //添加相机图片
    @RequestMapping("addPhotoPhoto")
    @ResponseBody
    String addPhotoPhoto(int commodity_id,MultipartFile test_photo_photo) throws SQLException, IOException {
        String filePath = "D:\\SSM_3CShop\\test";
        String originalFilename = test_photo_photo.getOriginalFilename();
        File targetFile1 = new File(filePath, originalFilename);
        test_photo_photo.transferTo(targetFile1);
        String photo ="/test/"+originalFilename;

        int i = CS.addPhotoPhoto(commodity_id, photo);
        if (i!=0){
            return "success";
        }else {
            return "error";
        }
    }

    //全部订单
    @RequestMapping("AllAdminCart")
     String AllAdminCart(@RequestParam(value = "pn", defaultValue = "1") Integer pn,int state,Model md)throws SQLException{
        PageHelper.startPage(pn, 5);
        List<Cart> carts = CS.AllAdminCart(state);
        PageInfo page = new PageInfo(carts, 5);
        md.addAttribute("page",page);
        List<Order> orders = CS.allOrderType();
        md.addAttribute("orders",orders);
        md.addAttribute("state",state);
        return "admin_cart";
    }

    //查询全部待付款
    @RequestMapping("allNoPay")
    String allNoPay(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model md)throws SQLException{
        PageHelper.startPage(pn, 5);
        List<Cart> carts = CS.allNoPay();
        PageInfo page = new PageInfo(carts, 5);
        md.addAttribute("page",page);
        return "allnopay";
    }

}
