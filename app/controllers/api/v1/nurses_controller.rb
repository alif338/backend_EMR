class Api::V1::NursesController < ApplicationController
  # TODO: initialize request middleware for authorization

  def create_new_record
    patient_id = Patient.find_by(id: params[:patient_id]).id
    signature_name = Doctor.find_by(id: params[:doctor_id]).name
    record = Record.new(patient_id: patient_id, signature_name: signature_name, date_time: params[:date_time])
    if record.save
      render json: record
    else
      render json: record.errors, status: :unprocessable_entity
    end
  end

  def create_anemnesa
    record = Record.find_by(id: params[:record_id])
    anemnesa = Anemnesa.new(anemnesa_params)
    if anemnesa.save
      render json: anemnesa
    else
      render json: anemnesa.errors, status: :unprocessable_entity
    end
  end

  def create_physics_support_check
    record = Record.find_by(id: params[:record_id])
    physics_support_check = PhysicsSupportCheck.new(physics_support_check_params)
    if physics_support_check.save
      render json: physics_support_check
    else
      render json: physics_support_check.errors, status: :unprocessable_entity
    end
  end

  def create_diagnostic
    record = Record.find_by(id: params[:record_id])
    diagnostic = Diagnostic.new(diagnostic_params)
    if diagnostic.save
      render json: diagnostic
    else
      render json: diagnostic.errors, status: :unprocessable_entity
    end
  end

  def create_management_plan
    record = Record.find_by(id: params[:record_id])
    management_plan = ManagementPlan.new(management_plan_params)
    if management_plan.save
      render json: management_plan
    else
      render json: management_plan.errors, status: :unprocessable_entity
    end
  end

  def create_remedy_action
    record = Record.find_by(id: params[:record_id])
    remedy_action = RemedyAction.new(remedy_action_params)
    if remedy_action.save
      render json: remedy_action
    else
      render json: remedy_action.errors, status: :unprocessable_entity
    end
  end

  def create_medicine_receipt
    patient = Patient.find_by(id: params[:patient_id])
    medicine_receipt = MedicineReceipt.new(medicine_receipt_params)
    if medicine_receipt.save
      render json: medicine_receipt
    else
      render json: medicine_receipt.errors, status: :unprocessable_entity
    end
  end

  private

  def anemnesa_params
    params.permit(:record_id,:main_complaint, :disease_hist_now, :disease_hist_past, :disease_hist_family)
  end

  def physics_support_check_params
    params.permit(:record_id,:physics_check, :support_check)
  end

  def diagnostic_params
    params.permit(:record_id, :main_diag, :complicate_diag, :comorbid_diag)
  end

  def management_plan_params
    params.permit(:record_id,:therapy_plan, :advanced_plan, :educational_plan)
  end

  def remedy_action_params
    params.permit(:record_id,:remedy, :action)
  end

  def medicine_receipt_params
    params.permit(:patient_id, :date_time, :medicine_receipt, :written_by)
  end
end