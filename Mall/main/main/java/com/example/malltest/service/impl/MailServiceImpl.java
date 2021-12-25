//package com.example.malltest.service.impl;
//
//import com.example.malltest.pojo.EmailMsg;
//import com.example.malltest.service.MailService;
//import lombok.extern.slf4j.Slf4j;
//import org.apache.tomcat.jni.Address;
//import org.apache.tomcat.util.http.fileupload.util.mime.MimeUtility;
//import org.springframework.core.io.FileSystemResource;
//import org.springframework.mail.javamail.MimeMessageHelper;
//import org.springframework.stereotype.Service;
//import org.springframework.util.StringUtils;
//
//import javax.mail.MessagingException;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//import java.io.File;
//import java.io.UnsupportedEncodingException;
//import java.util.Map;
//
//@Service
//@Slf4j
//public class MailServiceImpl extends MailService {
//    @Override
//    public void sendMail(EmailMsg msg) {
//        log.info("准备发送邮件。。。");
//        try {
//            sendEmailAsync(msg);
//            log.info("邮件发送成功");
//        } catch (Exception e) {
//            log.error("邮件发送失败",e);
//        }
//    }
//    private boolean sendEmailAsync(EmailMsg msg) {
//        // 异步发送，防止等待响应超时
//        new Thread(()-> sendMail1(msg)).start();
//        return true;
//    }
//
//    private void sendMail1(EmailMsg emailMsg) {
//        try {
//            //使用JavaMail的MimeMessage，支付更加复杂的邮件格式和内容
//            MimeMessage mime = mailSender.createMimeMessage();
//            //创建MimeMessageHelper对象，处理MimeMessage的辅助类
//            MimeMessageHelper helper = new MimeMessageHelper(mime, true, "utf-8");
//            // 设置发件人邮箱
//            Address address = new InternetAddress(sendFrom, emailMsg.getFromName());
//            helper.setFrom((InternetAddress) address);
//            //设置收件人
//            if (StringUtils.isNotBlank(emailMsg.getToEmails())) {
//                String[] to = emailMsg.getToEmails().split(";");
//                helper.setTo(to);
//            }
//            //设置抄送
//            if (StringUtils.isNotBlank(emailMsg.getCcEmails())) {
//                String[] cc = emailMsg.getCcEmails().split(";");
//                helper.setCc(cc);
//            }
//            // 设置邮件主题
//            helper.setSubject(emailMsg.getSubject());
//            // 设置邮件内容：true表示设定html格式
//            if (emailMsg.g  etContent() != null) {
//                helper.setText(emailMsg.getContent(), true);
//            } else {
//                this.sendWithTemplate(emailMsg, helper);
//            }
//            //设置邮件图片
//            if (emailMsg.getPictures() != null) {
//                this.setAttachmentOrInline(emailMsg, helper, false);
//            }
//            //设置邮件附件
//            if (emailMsg.getAttachments() != null) {
//                this.setAttachmentOrInline(emailMsg, helper, true);
//            }
//            //设置邮件发送时间
//            if (emailMsg.getSendTime() != null) {
//                helper.setSentDate(emailMsg.getSendTime());
//            } else {
//                helper.setSentDate(new Date());
//            }
//            // 发送邮件
//            mailSender.send(mime);
//            log.info("发送了一封邮件<" + emailMsg.getToEmails() + ">,主题为<" + emailMsg.getSubject() + ">,时间为<" + DateUtils.formatDateTime(new Date()) + ">");
//        } catch (Exception e) {
//            log.error("EmailSendManager.sendMail error,cause by  {}", e.getMessage());
//        }
//    }
//    /**
//     * 添加附件或者图片
//     * @param emailMsg email 信息实体
//     * @param helper 用于填充MimeMessage的工具类
//     * @param isAttachment 如果true，添加附件，否则添加图片
//     */
//    private void setAttachmentOrInline(EmailMsg emailMsg, MimeMessageHelper helper, boolean isAttachment) {
//        Map<String, String> resources;
//        if (isAttachment) {
//            resources = emailMsg.getAttachments();
//        } else {
//            resources = emailMsg.getPictures();
//        }
//        for (Iterator<Entry<String, String>> it = resources.entrySet().iterator(); it.hasNext(); ) {
//            Map.Entry<String, String> entry = it.next();
//            String cid = entry.getKey();
//            String filePath = entry.getValue();
//            File file = new File(filePath);
//            FileSystemResource fileResource = new FileSystemResource(file);
//            try {
//                if (isAttachment) {
//                    helper.addAttachment(MimeUtility.encodeWord(cid), fileResource);
//                } else {
//                    helper.addInline(MimeUtility.encodeWord(cid), fileResource);
//                }
//            } catch (MessagingException e) {
//                log.info("EmailSendManager.setAttachmentOrInline={}", e);
//            } catch (UnsupportedEncodingException e) {
//                log.info("EmailSendManager.setAttachmentOrInline={}", e);
//            }
//        }
//    }
//
//}
