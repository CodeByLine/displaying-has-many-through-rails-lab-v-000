class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
    @doctor.save
  end

  def edit
    @doctor = Doctor.find_by(params[:id])
  end

  def update
      @doctor = Doctor.find_by(params[:id])
      @doctor.update
  end

  def show
    @doctor = Doctor.find_by(params[:id])

  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :department, :id)
  end
end
