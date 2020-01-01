package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.PageBean;
import com.qf.entity.TResult;
import com.qf.entity.TUser;
import com.qf.service.ITUserService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private ITUserService tUserService;

    public TUser login(){

        return null;
    }
   /* @RequestMapping("page")
    public String page(PageBean pageBean, ModelMap map,String name){
        PageInfo<TUser> pageInfo= tUserService.getUserPage(pageBean,name);
        map.put("name",name);
        map.put("pageInfo",pageInfo);
        return "application/user/userlist";
    }*/
    //按条件查询用户信息（分页）
    @RequestMapping("selectByCondition")
    public String selectByCondition(String name,PageBean pageBean,ModelMap map){
        PageInfo<TUser> pageInfo= tUserService.selectByCondition(name,pageBean);
        map.put("name",name);
        map.put("pageInfo",pageInfo);
        map.put("url","user/selectByCondition");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("name",name);
        map.put("params",gson.toJson(paramMap));
        return "application/user/userlist";
    }
//    @RequiresPermissions(value = "user:update")
    @RequestMapping("toUpdate/{id}")
    public String toUpdateUser(@PathVariable int id,ModelMap map){
        TUser user = tUserService.getUserById(id);
        map.put("user",user);
        return "application/user/UpdateUser";
    }
    @RequestMapping("update")
    public String update(TUser user) {
        tUserService.updateUser(user);
        return "application/user/userlist";
    }
    //跳转到添加页面
//    @RequiresPermissions(value = "user:add")
    @RequestMapping("add")
    public String toadd(TUser user){
        return "application/user/userAdd";
    }
    //添加功能
    @RequestMapping("addinfo")
    public String addinfo(TUser user){
        tUserService.addinfo(user);
        return "application/user/userlist";
    }
    @RequestMapping("deleteById/{id}")
    public String delete(@PathVariable int id){
        tUserService.deleteById(id);
        return "application/user/userlist";
    }

    @RequestMapping("uploadinfo")
    public void uploadinfo(HttpServletResponse response, HttpServletRequest request) throws IOException {
        //1.得到文件上传的工厂对象
        DiskFileItemFactory factory=new DiskFileItemFactory();
        //2.通过工厂对象得到文件上传的对象
        ServletFileUpload fileUpload=new ServletFileUpload(factory);
        try {
            //3.通过上传对象解析客户请求，并存入集合中
            List<FileItem> fileItems = fileUpload.parseRequest(request);
            //4.从集合中得到文件对象，此处不用遍历，因为只有一个文件
            FileItem fileItem = fileItems.get(0);
            //5.设置文件上传的映射路径
            String mapperpath="uploadfiles";
            //6.判断是否是文本类型
            if (!fileItem.isFormField()){
                //若是文件类型
                //7.拿到文件的名称
                String fileName = fileItem.getName();
                System.out.println(fileName);
                //8.设置文件的真实的上传路径
                String uploadPath="F:\\yayiyi\\src\\main\\webapp\\uploadfiles";
                //9.拼接完整路径，因为文件流copy需要完整路径
                File file=new File(uploadPath,fileName);
                //10.copy
                FileCopyUtils.copy(fileItem.getInputStream(),new FileOutputStream(file));
                //11.构建完整的映射路径
                mapperpath=mapperpath+File.separator+fileName;
            }
            //12.通过响应对象拿到文件输出流的对象
            PrintWriter writer = response.getWriter();
            //13.将映射路径反对给到页面
            writer.write(mapperpath);
            writer.flush();
            writer.close();
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("login")
    public String login(String name, String password, ModelMap map, HttpServletRequest request){
        TUser tUser = tUserService.findUserByNameandPassword(name,password);
        if (tUser!=null){
            request.getSession().setAttribute("tUser",tUser);
            return "index";
        }
        return "index";
    }
    //忘记密码后的验证,跳转至修改密码
    @RequestMapping("verificationUser")
    public String verificationUser(String name,String idNum,ModelMap map,HttpSession session,String code,HttpServletRequest request){

        TUser tUser = tUserService.verificationUserByNameandIdnum(name,idNum);
        String yzm = (String) session.getAttribute("imgCode");
        if (code.equals(yzm)){
            if (tUser!=null){
                Integer id = tUser.getId();
                map.put("id",id);
                return "updatePassword";
            }
        }
        return "forgetPassword";
    }
    //重置密码
    @RequestMapping("resetPassword")
    public String resetPassword(Integer id,String password,ModelMap map){
        TResult tResult = tUserService.resetPasswordByIdAndPassword(id,password);
        if (tResult.isResult()){
            return "index";
        }
        return "updatePassword";
    }

    @RequestMapping("register")
    public String register(String name,String password,String email,String code,HttpSession session){
        tUserService.register(name,password,email);
        String yzm = (String) session.getAttribute("imgCode");
        if (!(code.equals(yzm))){
            return "consultantsRegister";
        }
        return  "consultantLogin";
    }
    //个人中心———修改密码
    @RequestMapping("updatePassword")
    public String updatePassword(String password, HttpSession session){
        TUser tUser = (TUser) session.getAttribute("tUser");
        Integer id = tUser.getId();
        TResult tResult = tUserService.resetPasswordByIdAndPassword(id,password);
        if (tResult.isResult()){
            return "index";
        }
        return "personalPasswordUpdate";
    }
    //注册账号
    @RequestMapping("registerinfo")
    public String registerinfo(TUser user){
        /*tUserService.registerinfo(user);*/
        return null;
    }
    @RequestMapping("updateUserData")
    public String updateUserData(HttpSession session, String email, String phone, String name, String province, String city, String county, String sex, String birthday) throws ParseException, IOException {
        TUser tUser = (TUser) session.getAttribute("tUser");
        tUser.setEmail(email);
        tUser.setPhone(phone);
        tUser.setName(name);
        tUser.setProvince(province);
        tUser.setCity(city);
        tUser.setCounty(county);
        if ("男".equals(sex)){
            tUser.setSex(1);
        }else{
            tUser.setSex(0);
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date birth = simpleDateFormat.parse(birthday);
        tUser.setBirthday(birth);
        tUserService.updateByPrimaryKey(tUser);
        return "personalData";
    }
    @RequestMapping("upload")
    public String upload(@RequestParam(value="uploadFile")MultipartFile uploadFile, HttpSession session) throws IOException {
        TUser tUser = (TUser) session.getAttribute("tUser");
        String filename = uploadFile.getOriginalFilename();
        tUser.setPictureUrl("images/"+filename);
        tUserService.updateByPrimaryKey(tUser);
        String leftPath = session.getServletContext().getRealPath("/images");
        File file = new File(leftPath,filename);
        uploadFile.transferTo(file);
        return  "personalData";
    }
    @RequestMapping("YZM")
    public void YZM(HttpServletRequest request,HttpServletResponse response) throws IOException {
        int width = 110;
        int height = 56;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics graphics = image.getGraphics();
        graphics.setColor(Color.BLUE);
        graphics.fillRect(0, 0, width, height);
        graphics.setColor(Color.YELLOW);
        graphics.setFont(new Font("宋体", Font.BOLD, 30));
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for(int i=0;i<4;i++){
            int num = random.nextInt(10);
            graphics.drawString(num+"", 15+i*20, 40);
            sb.append(num);
        }
        request.getSession().setAttribute("imgCode", sb.toString());
        for(int i=0;i<10;i++){
            graphics.drawLine(random.nextInt(width),
                    random.nextInt(height), random.nextInt(width), random.nextInt(height));
        }
        ImageIO.write(image, "jpg", response.getOutputStream());
    }
}
