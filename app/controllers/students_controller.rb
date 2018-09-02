class StudentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @student = Student.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      @application = Application.new(application_params)
      @student = Student.new
        @student.user = @user
        @student.application = @application
      if @application.save!
        if @student.save!
          redirect_to new_appointment_path
        else
          @user.destroy
          @application.destroy
          render 'new'
        end
      else
        @user.destroy
        render 'new'
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :username)
  end

  def application_params
    params.require(:application).permit(:native_language, :years_of_english, :past_experience, :learning_goals, :topics_of_interest, :age, :address, :gender)
  end
end
