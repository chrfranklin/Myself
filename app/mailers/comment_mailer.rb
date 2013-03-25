class CommentMailer < ActionMailer::Base
  
  default from: "chrfranklin@gmail.com" # 默认发送邮件
  
  def comment_notify_email(email)
    mail to: email,subject:"Resume"    
  end
end  
