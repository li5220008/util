package com.gtafe.util;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.UUID;

/**
 * Created by free on 14-3-1.
 */
public class WebUtils {
    /**
     * 把request 对象封装到bean里面来
     * @param request
     * @param beanClazz
     */
    public static <T> T request2Bean(HttpServletRequest request, Class<T> beanClazz){
        try {
            //1创建要封装的bean对象
            T bean = beanClazz.newInstance();
            //2把数据封装到bean中
            /*Field[] fields = bean.getClass().getFields();
            Method[] methods = bean.getClass().getMethods();
            for(Method m : methods){
                String value = request.getParameter(m.getName());
                m.invoke(bean,value);
            }*/

            Enumeration e = request.getParameterNames();
            while (e.hasMoreElements()){
                String name = (String)e.nextElement();
                String value = request.getParameter(name);
                BeanUtils.setProperty(bean, name, value);
            }
            return bean;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 两个bean属性的拷贝
     * @param src
     * @param dest
     */
    public static void copyBean(Object src,Object dest){
        //注册日期转换器
        ConvertUtils.register(new Converter() {
            public Object convert(Class tClass, Object o) {
                String value = (String) o;
                if (value == null || "".equals(value.trim())) {
                    return null;
                }
                try {
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    return sdf.parse(value);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }, Date.class);

        //注册日期转换器(formate)
        /*ConvertUtils.register(new Converter() {
            public Object convert(Class tClass, Object o) {
                Date value = (Date)o;
                if(value==null){
                    return null;
                }
                try {
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    return sdf.format(value);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        },String.class);*/
        try {
            BeanUtils.copyProperties(dest, src);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 产生全球唯一ID
     * @return
     */
    public static String generateID(){
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }
}
