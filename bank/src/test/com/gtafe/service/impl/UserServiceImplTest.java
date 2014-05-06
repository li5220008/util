package com.gtafe.service.impl;

import com.gtafe.model.User;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IUserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-4-17
 * Time: 下午1:53
 */
public class UserServiceImplTest extends BaseTest {
    @Autowired
    private IUserService userService;

    @Test
    public void testAddUser() throws Exception {
        User user = new User();
        user.setUsername("li");
        user.setPassword("123456");
        user.setUserAge(28);
        user.setUserAddress("深圳");
        user.setBirthday(new Date());
        userService.addUser(user);
    }

    @Test
    public void testDeleteUser() throws Exception {
        userService.deleteUser(1);
    }

    @Test
    public void testFindAllUser() throws Exception {
        List<User> allUser = userService.findAllUser();
        for (User user : allUser) {
            System.out.println(user);
        }
    }

    @Test
    public void testLogin() throws Exception {
    }

    @Test
    public void testSelectUserByID() throws Exception {
        User user = userService.selectUserByID(2);
        System.out.println(user);

    }

    @Test
    public void testSelectUsers() throws Exception {
        List<User> username = userService.selectUsers("admin");
        System.out.println(username);
    }

    @Test
    public void testUpdateUser() throws Exception {
        User user = new User();
        user.setUsername("li");
        user.setPassword("123456");
        user.setUserAge(28);
        user.setUserAddress("深圳");
        user.setBirthday(new Date());
        userService.updateUser(user);
    }

    @Test
    public void testGetDataByPage() throws Exception {
        //userService.getDataByPage();
    }

    @Test
    public void testGetDataCount() throws Exception {

    }

    @Test
    public void testAddUserList() throws Exception {

    }


}
