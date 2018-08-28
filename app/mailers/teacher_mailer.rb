class TeacherMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.teacher_mailer.question.subject
  #
  def question(email, content)
    @email = email
    @content = content
    mail to: "abbyarend2@gmail.com"
  end
end
