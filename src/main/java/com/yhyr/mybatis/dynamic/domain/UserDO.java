package com.yhyr.mybatis.dynamic.domain;



import java.util.Date;

/**
 * @Description:
 * @Author: Winston Yang
 * @Date: Create in 14:41 2018/8/6
 * @Modified by:
 */

public class UserDO {
    /**
     * PK
     */
    private int id;
    /**
     * 用户名
     */
    private String userName;
    /**
     * 用户编码uuid
     */
    private String userCode;
    /**
     * 用户所属公司
     */
    private String company;
    /**
     * 登录名
     */
    private String loginName;
    /**
     * 密码
     */
    private String password;
    /**
     * 邮件
     */
    private String email;
    /**
     * 用户类型
     */
    private int userType;
    /**
     * 用户描述
     */
    private String userDesc;
    /**
     * 创建者
     */
    private String creator;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 更新者
     */
    private String updater;
    /**
     * 更新时间
     */
    private Date updateTime;
    /**
     * 状态
     */
    private int status;
    public UserDO(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    public String getUserDesc() {
        return userDesc;
    }

    public void setUserDesc(String userDesc) {
        this.userDesc = userDesc;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "UserDO{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", userCode='" + userCode + '\'' +
                ", company='" + company + '\'' +
                ", loginName='" + loginName + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", userType=" + userType +
                ", userDesc='" + userDesc + '\'' +
                ", creator='" + creator + '\'' +
                ", createTime=" + createTime +
                ", updater='" + updater + '\'' +
                ", updateTime=" + updateTime +
                ", status=" + status +
                '}';
    }
}
