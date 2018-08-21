class AppointmentsController < ApplicationController

  def index
  end

  def new
    # @student = current_user.student
    @appointment = Appointment.new
  end

  def create
  end
end
