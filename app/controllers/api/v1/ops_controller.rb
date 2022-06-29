class Api::V1::OpsController < ApplicationController

  def index
    @ops = Record.all
    render json: @ops
  end

  def show
    @op = Record.find_by(name: params[:name])
    render json: @op
  end

  def register_patient
    @patient = Patient.new(patient_params)
    if @patient.save
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :age, :gender, :religion, :education, :job_profession, :alergical_hist, :member_type, :no_medical_record)
  end
    
end