class Api::V1::OpsController < ApplicationController
  # TODO: initialize request middleware for authorization

  def get_all_recorded_patients
    @ops = Patient.all
    render json: @ops
  end

  def get_patient_by_id
    @op = Patient.find_by(id: params[:id])
    render json: @op
  end

  def get_all_recorded_nurses
    @ops = Doctor.all
    render json: @ops
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