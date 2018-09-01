class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
    if current_user.teacher
      @appointments = current_user.teacher.appointments
    elsif current_user.student
      @appointments = current_user.student.appointments
    else
      @appointments = Appointment.all
    end
  end

  def new
    if user_signed_in?
      @student = current_user.student if current_user.student
    else
      @student = Student.new
    end
    @appointments = Appointment.all
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.student = current_user.student
    @appointment.teacher = User.find_by(username: "teacherAbby").teacher
    if @appointment.save!
      redirect_to appointments_path
    else
      render 'new'
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :duration, :topic, :location)
  end
end
