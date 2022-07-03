class Api::V1::OpsController < ApplicationController
  # TODO: initialize request middleware for authorization
  # before_action :authenticate_user!
  # before_action :admin_only, :except => :show

  def get_all_recorded_patients
    @ops = Patient.all
    render json: @ops
  end

  def get_all_records
    @ops = Record.all
    render json: @ops
  end

  def get_patient_by_id
    @op = Patient.find_by(id: params[:id])
    # unless current_user.admin?
    #   unless @user == current_user
    #     redirect_to :back, :alert => "Access denied."
    #   end
    # end
    render json: @op
  end

  def get_all_nurses
    @ops = Doctor.all
    render json: @ops
  end

  def register_new_patient
    @patient = Patient.new(patient_params)
    if @patient.save
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  private

  def admin_only
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end

  def patient_params
    params.require(:patient).permit(:name, :age, :gender, :religion, :education, :job_profession, :alergical_hist, :member_type, :no_medical_record)
  end
    
end