class Api::V1::OpsController < ApplicationController

  def index
    @ops = Record.all
    render json: @ops
  end

  def create_patient
    @patient = Record.new(patient_params)
    if @patient.save
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  private

  def patient_params
    params.require(:patient).permit
  end
    
end