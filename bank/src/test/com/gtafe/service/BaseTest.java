package com.gtafe.service;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Desc: 测试基类加载容器配置文件
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-4-18
 * Time: 下午4:53
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:Configuration.xml","classpath:ApplicationContext.xml"})
public class BaseTest extends AbstractJUnit4SpringContextTests {
}