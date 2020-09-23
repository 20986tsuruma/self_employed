class ApplicationMailer < ActionMailer::Base
  default from: '管理人 <toshinori1202@gmail.com>'
  layout 'mailer'

  def received_email(contact)
    @contact = contact
    mail(:to => contact.email, :subject => 'お問い合わせを承りました')
  end

end
