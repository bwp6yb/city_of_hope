class LeaderMailer < ActionMailer::Base
  include SendGrid

  sendgrid_category :use_subject_lines

  default to: "dillanmitchell2086@yahoo.com"
  #default to: "ccfjoe@juno.com"

  def community_email(email_info)
    mail(subject: "#{email_info[:name]} wants information on community groups", from: email_info[:email_address]) 
  end

  def service_email(email_info)
  	mail(subject: "#{email_info[:name]} wants information on service groups", from: email_info[:email_address])
  end
end
