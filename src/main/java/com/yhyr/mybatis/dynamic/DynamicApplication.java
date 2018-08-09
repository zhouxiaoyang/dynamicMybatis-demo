package com.yhyr.mybatis.dynamic;

import com.alibaba.druid.pool.DruidDataSource;
import com.yhyr.mybatis.dynamic.datasource.DataSourceContextHolder;
import com.yhyr.mybatis.dynamic.datasource.DynamicDataSource;
import com.yhyr.mybatis.dynamic.domain.DBInfo;
import com.yhyr.mybatis.dynamic.domain.UserDO;
import com.yhyr.mybatis.dynamic.services.DBService;
import com.yhyr.mybatis.dynamic.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.Map;

/**
 * @Description:
 * @Author: Winston Yang
 * @Date: Create in 14:41 2018/8/6
 * @Modified by:
 */

@SpringBootApplication
public class DynamicApplication implements CommandLineRunner {
	@Autowired
	UserService userService;

	@Autowired
	DBService dbService;

//	@Autowired
//	StudentService studentService;

	public static void main(String[] args) {
		SpringApplication.run(DynamicApplication.class, args);
	}

	public void setDruidDataSource(String dbName){
		DataSourceContextHolder.setDBType("master");

		DBInfo dbInfo = dbService.getDBInfoByDBName(dbName);
		System.out.println("dbName is -> " + dbInfo.getDbName() + "; dbIP is  -> " + dbInfo.getDbIp() + "; dbUser is  -> " + dbInfo.getDbUser() + "; dbPasswd is -> " + dbInfo.getDbPasswd());

		DruidDataSource dynamicDataSource = new DruidDataSource();
		dynamicDataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dynamicDataSource.setUrl("jdbc:mysql://" + dbInfo.getDbIp() + ":" + dbInfo.getDbPort() + "/" + dbInfo.getDbName() + "?characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull");
		dynamicDataSource.setUsername(dbInfo.getDbUser());
		dynamicDataSource.setPassword(dbInfo.getDbPasswd());

		/**
		 * 创建动态数据源
		 */
		Map<Object, Object> dataSourceMap = DynamicDataSource.getInstance().getDataSourceMap();
		dataSourceMap.put(dbName, dynamicDataSource);
		DynamicDataSource.getInstance().setTargetDataSources(dataSourceMap);
		/**
		 * 切换为动态数据源实例，
		 */
		DataSourceContextHolder.setDBType(dbName);
	}

	@Override
	public void run(String... strings) throws Exception {

		/**
		 * 从master数据库中
		 * 根据数据库名获取目标数据库信息
		 */
		setDruidDataSource("demo2");
		UserDO userDO2 = userService.get(8);
		//userInfoList.stream().forEach(userInfo -> System.out.println("name is : " + userInfo.getName() + "; sex is : " + userInfo.getSex() + "; age is : " + userInfo.getAge()));
		System.out.println(userDO2.toString());

		setDruidDataSource("demo");
		UserDO userDO = userService.get(8);
		//userInfoList.stream().forEach(userInfo -> System.out.println("name is : " + userInfo.getName() + "; sex is : " + userInfo.getSex() + "; age is : " + userInfo.getAge()));
		System.out.println(userDO.toString());

//		/**
//		 * 从default数据库中查询数据
//		 */
//		DataSourceContextHolder.setDBType("default");
//		UserDO userDO = userService.get(8);
//		//userInfoList.stream().forEach(userInfo -> System.out.println("name is : " + userInfo.getName() + "; sex is : " + userInfo.getSex() + "; age is : " + userInfo.getAge()));
//		System.out.println(userDO.toString());
////		List<StudentInfo> studentInfoList = studentService.getStudentInfo();
//		studentInfoList.stream().forEach(studentInfo -> System.out.println("studentName is : " + studentInfo.getStudentName() + "; className is : " + studentInfo.getClassName() + "; gradeName is : " + studentInfo.getGradeName()));

	}
}
