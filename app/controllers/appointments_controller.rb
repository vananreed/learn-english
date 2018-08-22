class AppointmentsController < ApplicationController

  def index
    if current_user.teacher
      @appointments = current_user.teacher.appointments
    else
      @appointments = current_user.student.appointments
    end
  end

  def new
    @student = current_user.student if current_user.student
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.student = current_user.student
    @appointment.teacher = User.find_by(username: "teacherAbby")
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
