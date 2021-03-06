class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @question = Question.new(question_params)
    @question.teacher = Teacher.find(1);
    @question.save!
    TeacherMailer.question(@question.email, @question.name, @question.content).deliver_now
    flash[:notice] = "Thank you, Email Sent :)"
    redirect_back(fallback_location: root_path)
  end

  private

  def question_params
    params.require(:question).permit(:name, :content, :email)
  end
end
