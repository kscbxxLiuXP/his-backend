## 简介

这是东软云HIS web 的后端项目，采用`SpringBoot`技术



## 数据源

采用了Alibaba的Druid数据源

```xml
<dependency>
    <groupId>com.alibaba</groupId>
    <artifactId>druid</artifactId>
    <version>1.1.23</version>
</dependency>
```

```yaml
spring:
  datasource:
    username: root
    password: "090312"
    url: jdbc:mysql://127.0.0.1:3306/jdbc
    driver-class-name: com.mysql.cj.jdbc.Driver
    type: com.alibaba.druid.pool.DruidDataSource
```