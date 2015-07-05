class FormsController < ApplicationController
  before_action :authenticate_user!, only: [:index ,:show, :edit, :update, :destroy]
  before_action :set_form, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :exception
  helper_method :compute_age


  # GET /forms
  # GET /forms.json
  def index
    @q = Form.ransack(params[:q])
    @forms = @q.result(distinct: true).order(created_at: :desc).page params[:page]

  end

  # GET /forms/1
  # GET /forms/1.json
  def show
    @comments = @form.comment_threads.order('created_at desc')
    @new_comment = Comment.build_from(@form, current_user.id, "")
  end

  def thankyou
  end

  # GET /forms/new
  def new
    @form = Form.new
    @show_button = true
  end

  # GET /forms/1/edit
  def edit
    @show_button = true
  end

  # POST /forms
  # POST /forms.json
  def create
    @show_button = true
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save
        format.html { redirect_to thankyou_path, notice: 'Form was successfully created.' }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def compute_age(application)
    age = Date.today.year - application.birthday.year
    age -= 1 if Date.today < application.birthday + age.years
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:resume ,:last_name, :first_name, :gender_male, :gender_female, :gender_other, :address, :postal_code, :main_intersection, :birthday, :cellphone, :house_phone, :emergency_contact_name, :emergency_contact_phone, :email, :physical_limitations, :physical_limitations_describe, :allergies, :allergies_describe, :surgery_or_injury, :surgery_or_injury_describe, :whimis_awareness, :whimis_describe, :sin_number, :sin_number_expiry, :legal_to_work, :driver_license, :license_g1, :license_g2, :license_g, :car_owner, :is_car, :is_van, :is_pickup, :own_safety_boots, :own_safety_boots_csa, :own_helmet, :nationality, :registered_other_agencies, :other_agencies_describe, :is_student, :education_primary, :education_secundary, :education_college, :education_university, :education_other, :education_title, :education_graduation_date, :english_fluent, :english_well, :english_dificulty, :other_language, :other_language_fluent, :other_language_well, :other_language_dificulty, :available_from, :position_required, :how_find_out_solamac, :work_history, :shift_day, :shift_afternoon, :shift_night, :shift_overnight, :shift_weekdays, :shift_weekends, :shift_overtime)
    end
end
