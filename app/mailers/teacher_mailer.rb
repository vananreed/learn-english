class TeacherMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.teacher_mailer.question.subject
  #
  def question(email, client_name, content)
    @email = email
    @name = client_name
    @content = content
    mail to: "abbyarend2@gmail.com"
  end
end
