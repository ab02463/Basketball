class EmployeeEmailsController < ApplicationController
  before_action :set_employee_email, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /employee_emails
  # GET /employee_emails.json
  def index
    @employee_emails = EmployeeEmail.all
  end

  # GET /employee_emails/1
  # GET /employee_emails/1.json
  def show
  end

  # GET /employee_emails/new
  def new
    @employee_email = EmployeeEmail.new
  end

  # GET /employee_emails/1/edit
  def edit
  end

  # POST /employee_emails
  # POST /employee_emails.json
  def create
    @employee_email = EmployeeEmail.new(employee_email_params)

    respond_to do |format|
      if @employee_email.save
        format.html { redirect_to @employee_email, notice: 'Employee email was successfully created.' }
        format.json { render :show, status: :created, location: @employee_email }
      else
        format.html { render :new }
        format.json { render json: @employee_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_emails/1
  # PATCH/PUT /employee_emails/1.json
  def update
    respond_to do |format|
      if @employee_email.update(employee_email_params)
        format.html { redirect_to @employee_email, notice: 'Employee email was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_email }
      else
        format.html { render :edit }
        format.json { render json: @employee_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_emails/1
  # DELETE /employee_emails/1.json
  def destroy
    @employee_email.destroy
    respond_to do |format|
      format.html { redirect_to employee_emails_url, notice: 'Employee email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_email
      @employee_email = EmployeeEmail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_email_params
      params.require(:employee_email).permit(:employee_id, :email)
    end
end
