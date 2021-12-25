//package com.example.malltest.pojo;
//
//import lombok.Data;
//
//import java.util.Date;
//import java.util.Map;
//
//@Data
//public class EmailMsg {
//
//        private static final long serialVersionUID = -808318905357852929L;
//
//        /**
//         * 收件人邮箱，多个邮箱以“;”分隔
//         */
//        private String toEmails;
//
//        /**
//         * 抄送人人邮箱，多个邮箱以“;”分隔
//         */
//        private String ccEmails;
//
//        /**
//         * 邮箱标题
//         */
//        private String subject;
//
//        /**
//         * 正文内容
//         */
//        private String content;
//
//        /**
//         * Thymeleaf模板
//         */
//        private String freemarkerTemplate;
//
//        /**
//         * 声明Map对象，并填入用来填充模板文件的键值对
//         */
//        private Map<String, Object> model;
//
//        /**
//         * 邮件中的图片，为空时无图片。map中的key为图片ID，value为图片地址
//         */
//        private Map<String, String> pictures;
//
//        /**
//         * 邮件中的附件，为空时无附件。map中的key为附件ID，value为附件地址
//         */
//        private Map<String, String> attachments;
//
//        /**
//         * 开始时间
//         */
//        private String startDate;
//
//        /**
//         * 结束时间
//         */
//        private String endDate;
//
//        /**
//         * 发送时间
//         */
//        private Date sendTime;
//
//        /**
//         * 1 已发送 2 未发送
//         */
//        private Integer status;
//
//        /**
//         * 1 正常 2 定时
//         */
//        private Integer type;
//
//        /**
//         * 发件人昵称
//         */
//        private String fromName;
//}
//
//
