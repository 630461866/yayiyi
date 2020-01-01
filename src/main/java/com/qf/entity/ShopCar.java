package com.qf.entity;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class ShopCar {

    //定义一个集合来存放购买商品订单
    private List<TGoodsOrder> list = new ArrayList<>();

    //提供一个方法供外界调用，得到一辆购物车
    public static ShopCar getShopCar(HttpServletRequest request){

       ShopCar shopCar = (ShopCar) request.getSession().getAttribute("SHOP_CAR");

       if (shopCar==null){
           shopCar=new ShopCar();
           //存购物车
           request.getSession().setAttribute("SHOP_CAR",shopCar);
       }

        return shopCar;
    }

    //往购物车中添加订单
    public void add(TGoodsOrder order){

        boolean flag = true; //true表示购物车中没有商品

        for(TGoodsOrder order1 : list){
            if (order1.getId()==order.getId()){
                //修改购物车商品的数量
                order1.setCount(order1.getCount()+order.getCount());
                flag=false;
                return;
            }
        }

        if (flag){
            //购物车中没有该商品
            list.add(order);
        }

    }

    //修改购物车商品数量
    public void update(int orderId,int count){

        for (TGoodsOrder order : list){
            if (order.getId()==orderId){
                //修改数量
                order.setCount(count);
                return;
            }
        }

    }

    //从购物车移除商品
    public void delete(int orderId){

        for (TGoodsOrder order : list){
            if (order.getId()==orderId){
                list.remove(order);
                return;
            }
        }
    }

    //得到购物车商品的总价
    public double getTotalPrice(){

        //定义一个总价
        BigDecimal totalPrice = new BigDecimal(String.valueOf(0));

        for (TGoodsOrder order : list){
            totalPrice = totalPrice.add(new BigDecimal(String.valueOf(order.getDanPrice())));
        }

        return  totalPrice.doubleValue();

    }

}
