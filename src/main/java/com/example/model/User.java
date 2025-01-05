 package com.example.model;  
 public class User {
     private String username;
     private String password; 
     public User(String username, String password) {
         this.username = username;
         this.password = password;
     }
     public boolean isValid() {
         // 模拟验证用户，实际情况中应从数据库获取用户信息进行验证
         return "admin".equals(username) && "password123".equals(password);
     }
 }
