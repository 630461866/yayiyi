package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.*;

import com.qf.service.IGoodsAttributeService;
import com.qf.service.IGoodsOrderService;
import com.qf.service.ITChangeService;
import com.qf.service.ITConsigneeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @Author: zhangjia
 * @Date:2019/12/19
 */
@Controller
@RequestMapping("goods")
public class GoodsController {
    @Autowired
    private IGoodsOrderService goodsService;


    @Autowired
    private IGoodsAttributeService goodsAttributeService;

    @Autowired
    private ITConsigneeService consigneeService;

    @Autowired
    private ITChangeService tChangeService;

    //商品订单页面展示
    @RequestMapping("goodslist")
    public String goodslist(ModelMap map,String goodsName, PageBean pageBean){
        PageInfo<TGoodsOrder> pageInfo= goodsService.getgoodsOrderList(goodsName,pageBean);
        map.put("goodsName",goodsName);
        map.put("pageInfo",pageInfo);
        map.put("url","goods/goodslist");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("goodsName",goodsName);
        map.put("params",gson.toJson(paramMap));
        return "application/goods/goodsorder";
    }
    //商品页面展示
    @RequestMapping("goodslistinfo")
    public String goodslistinfo(ModelMap map,String goodsName, PageBean pageBean){
        PageInfo<TGoods> pageInfo= goodsService.getGoodslist(goodsName,pageBean);
        map.put("goodsName",goodsName);
        map.put("pageInfo",pageInfo);
        map.put("url","goods/goodslistinfo");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("goodsName",goodsName);
        map.put("params",gson.toJson(paramMap));
        return "application/goods/goodslistinfo";
    }
    @RequestMapping("toUpdate/{id}")
    public String toUpdateDoctor(@PathVariable int id, ModelMap map){
        TGoodsOrder goodsOrder = goodsService.getGoodsOrderById(id);
        map.put("goodsOrder",goodsOrder);
        return "application/goods/goodsUpdate";
    }
    @RequestMapping("toadd")
    public String addinfo(TGoodsOrder goodsOrder){
        return "application/goods/goodsAdd";
    }
    //首次点击产品目录
    @RequestMapping("list")
    public String list(ModelMap map){
        List<TGoodsAttribute> goodsTypeList = goodsAttributeService.getGoodsTypeList();
        List<TGoodsAttribute> goodsBrandList = goodsAttributeService.getGoodsBrandList();
        List<TGoods> goodsList = goodsService.getGoodsList();
        map.put("goodsTypeList",goodsTypeList);
        map.put("goodsBrandList",goodsBrandList);
        map.put("goodsList",goodsList);
        return "productList";
    }
    @RequestMapping("checkType")
    public String checkType(Integer id,ModelMap map){
        List<TGoodsAttribute> goodsTypeList = goodsAttributeService.getGoodsTypeListByTypeId(id);
        List<TGoodsAttribute> goodsBrandList = goodsAttributeService.getGoodsBrandListByTypeId(id);
        map.put("goodsTypeList",goodsTypeList);
        map.put("goodsBrandList",goodsBrandList);
        List<TGoods> goodsList = goodsService.getGoodsListByTypeId(id);
        map.put("goodsList",goodsList);
        return "productList";
    }
    @RequestMapping("checkBrand")
    public String checkBrand(Integer id, ModelMap map, HttpSession session){
        Integer bigTypeId = (Integer) session.getAttribute("BIGTYPEID");
        List<TGoodsAttribute> goodsTypeList = goodsAttributeService.getGoodsTypeListByBrandId(id,bigTypeId);
        List<TGoodsAttribute> goodsBrandList = goodsAttributeService.getGoodsBrandListByBrandId(id);
        map.put("goodsTypeList",goodsTypeList);
        map.put("goodsBrandList",goodsBrandList);
        List<TGoods> goodsList = goodsService.getGoodsListByBrandId(id);
        map.put("goodsList",goodsList);
        return "productList";
    }
    //点击大类标签
    @RequestMapping("listByBigTypeId")
    public String equipmentList(ModelMap map,Integer bigTypeId, HttpSession session){
        session.setAttribute("BIGTYPEID",bigTypeId);
        List<TGoodsAttribute> goodsTypeList = goodsAttributeService.getGoodsTypeListByBigTypeId(bigTypeId);
        map.put("goodsTypeList",goodsTypeList);
        if(1==bigTypeId){
            List<TGoodsAttribute> goodsBrandList = goodsAttributeService.getGoodsBrandList();
            map.put("goodsBrandList",goodsBrandList);
            List<TGoods> goodsList = goodsService.getGoodsList();
            map.put("goodsList",goodsList);
        }else if (2==bigTypeId){
            List<TGoodsAttribute> goodsBrandList = goodsAttributeService.getGoodsBrandListTwo();
            map.put("goodsBrandList",goodsBrandList);
            List<TGoods> goodsList = goodsService.getGoodsListTwo();
            map.put("goodsList",goodsList);
            return "productListTwo";
        }else if(3==bigTypeId){
            List<TGoodsAttribute> goodsBrandList = goodsAttributeService.getGoodsBrandListThree();
            map.put("goodsBrandList",goodsBrandList);
            List<TGoods> goodsList = goodsService.getGoodsListThree();
            map.put("goodsList",goodsList);
            return "productListThree";
        }else if(4==bigTypeId){
            List<TGoodsAttribute> goodsBrandList = goodsAttributeService.getGoodsBrandListFour();
            map.put("goodsBrandList",goodsBrandList);
            List<TGoods> goodsList = goodsService.getGoodsListFour();
            map.put("goodsList",goodsList);
            return "productListFour";
        }
        return "productList";
    }
    @RequestMapping("details")
    public String details(Integer goodsId, ModelMap map, HttpServletRequest request){
        List<TGoods> goodsDetailsList = goodsService.getGoodsDetailsListByGoodsId(goodsId);
        TGoods tGoods = goodsService.getGoodById(goodsId);

        map.put("goodsDetailsList",goodsDetailsList);
        map.put("goodsId",goodsId);
        Integer attributeId = goodsDetailsList.get(0).getAttributeId();
        List<TGoodsAttribute> goodsAttributeList = goodsAttributeService.getGoodsTypeNameById(attributeId);
        String typeName = goodsAttributeList.get(0).getGoodsType();
        map.put("typeName",typeName);

        //拿用户id
        TUser tUser = (TUser) request.getSession().getAttribute("tUser");
        Integer userId = tUser.getId();

        //随机数,订单编号
        String orderNumber = UUID.randomUUID().toString().replace("-", "").substring(0, 10);
        map.put("number",orderNumber);


        //状态
        String orderState = "未支付";

        //商品的单价
        Double goodsPrice = tGoods.getGoodsPrice();
        map.put("goodsPrice",goodsPrice);

        //商品的图片
        String goodsPicture = tGoods.getGoodsPicture();

        //商品的名字
        String goodsName = tGoods.getGoodsName();

        TGoodsOrder goodsOrder = new TGoodsOrder(goodsId,userId,goodsPrice,new Date(),orderState,orderNumber,goodsPicture,goodsName);

        goodsService.addGoodsOrder(goodsOrder);

        return "productDetails";
    }

    @RequestMapping("shopCar")
    public String shopCar(Integer count,Integer goodsId,Double goodsPrice,String number,ModelMap map,HttpServletRequest request){



        //拿用户id
        TUser tUser = (TUser) request.getSession().getAttribute("tUser");
        Integer userId = tUser.getId();

        String userName = tUser.getName();
        map.put("userName",userName);
        map.put("user",tUser);





        if (goodsId!=null){
            Double totallGoodsPrice=count*goodsPrice;
            goodsService.updatePrice(totallGoodsPrice,number);
        }



        //用用户id去查这个用户下的所有订单，用一个集合去接收
        List<TGoodsOrder> goodsOrderList =  goodsService.findOrderByUserId(userId);

        map.put("goodsOrderList",goodsOrderList);

        //存一个商品ID过去,一个商品id对应一个订单
        map.put("goodsId",goodsId);


        return "personalGoodsOrder";
    }

    @RequestMapping("check")
    public String check(String orderNumber,Date orderDate,String orderSate,String orderPrice,Double orderTotalPrice,ModelMap map){

        int yunfei = 20;

        if (orderTotalPrice>=200){
            yunfei=0;
        }

        double sum = yunfei+orderTotalPrice;

        map.put("orderNumber",orderNumber);
        map.put("orderDate",orderDate);
        map.put("orderSate",orderSate);
        map.put("orderPrice",orderPrice);
        map.put("orderTotalPrice",orderTotalPrice);
        map.put("yunfei",yunfei);
        map.put("sum",sum);



        return "personalOrdercheck";
    }

    @RequestMapping("orderConfirm")
    public String orderConfirm(Integer goodsId,HttpServletRequest request,ModelMap map){

        //拿用户id
        TUser tUser = (TUser) request.getSession().getAttribute("tUser");
        Integer userId = tUser.getId();

        //用用户id去查这个用户下的所有订单，用一个集合去接收
        List<TGoodsOrder> goodsOrderList =  goodsService.findOrderByUserId(userId);
        map.put("goodsOrderList",goodsOrderList);
        //return "personalOrderConfirm";

        map.put("goodsId",goodsId);

        //ShopCar shopCar = ShopCar.getShopCar(request);




        return  "test";
    }

    @RequestMapping("deleteOrder")
    public String deleteOrder(String orderNumber){

       goodsService.deleteOrder(orderNumber);

        return "redirect:/goods/orderConfirm";
    }

    @RequestMapping("pay")
    public String pay(String str,HttpServletRequest request,ModelMap map){

        //订单编号+数量
        String[] s1 = str.split(":");

        //存放了订单编号
        String orderNumber = s1[0];

        map.put("orderNumber",orderNumber);

        //存放了数量
        int count = Integer.parseInt(s1[1]);


        map.put("count",count);



        //拿用户id
        TUser tUser = (TUser) request.getSession().getAttribute("tUser");
        Integer userId = tUser.getId();

        TConsignee consignee = consigneeService.getConsigneeByUserId(userId);

        map.put("consignee",consignee);

        TGoodsOrder goodsOrder = goodsService.orderByOrderNumber(orderNumber);

        Double totalPrice = goodsOrder.getOrderTotalPrice();

        Double sum=count*totalPrice;
        map.put("sum",sum);
        map.put("goodsOrder",goodsOrder);

        return "personalSubmitOrder";
    }

    @RequestMapping("paySuccess")
    public String paySuccess(String orderNumber){

        goodsService.updateOrderState(orderNumber);



        return "index";
    }

    @RequestMapping("goodsExchange")
    public String goodsExchange(String number,String resouce){


        tChangeService.add(number,resouce);




        return "index";
    }

}
