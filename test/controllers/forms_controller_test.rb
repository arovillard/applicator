require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post :create, form: { address: @form.address, allergies: @form.allergies, allergies_describe: @form.allergies_describe, available_from: @form.available_from, birthday: @form.birthday, car_owner: @form.car_owner, cellphone: @form.cellphone, driver_license: @form.driver_license, education_college: @form.education_college, education_graduation_date: @form.education_graduation_date, education_other: @form.education_other, education_primary: @form.education_primary, education_secundary: @form.education_secundary, education_title: @form.education_title, education_university: @form.education_university, email: @form.email, emergency_contact_name: @form.emergency_contact_name, emergency_contact_phone: @form.emergency_contact_phone, english_dificulty: @form.english_dificulty, english_fluent: @form.english_fluent, english_well: @form.english_well, first_name: @form.first_name, gender_female: @form.gender_female, gender_male: @form.gender_male, gender_other: @form.gender_other, house_phone: @form.house_phone, how_find_out_solamac: @form.how_find_out_solamac, is_car: @form.is_car, is_pickup: @form.is_pickup, is_student: @form.is_student, is_van: @form.is_van, last_name: @form.last_name, legal_to_work: @form.legal_to_work, license_g1: @form.license_g1, license_g2: @form.license_g2, license_g: @form.license_g, main_intersection: @form.main_intersection, nationality: @form.nationality, other_agencies_describe: @form.other_agencies_describe, other_language: @form.other_language, other_language_dificulty: @form.other_language_dificulty, other_language_fluent: @form.other_language_fluent, other_language_well: @form.other_language_well, own_helmet: @form.own_helmet, own_safety_boots: @form.own_safety_boots, own_safety_boots_csa: @form.own_safety_boots_csa, physical_limitations: @form.physical_limitations, physical_limitations_describe: @form.physical_limitations_describe, position_required: @form.position_required, postal_code: @form.postal_code, registered_other_agencies: @form.registered_other_agencies, shift_afternoon: @form.shift_afternoon, shift_day: @form.shift_day, shift_night: @form.shift_night, shift_overnight: @form.shift_overnight, shift_overtime: @form.shift_overtime, shift_weekdays: @form.shift_weekdays, shift_weekends: @form.shift_weekends, sin_number: @form.sin_number, sin_number_expiry: @form.sin_number_expiry, surgery_or_injury: @form.surgery_or_injury, surgery_or_injury_describe: @form.surgery_or_injury_describe, whimis_awareness: @form.whimis_awareness, whimis_describe: @form.whimis_describe, work_history: @form.work_history }
    end

    assert_redirected_to form_path(assigns(:form))
  end

  test "should show form" do
    get :show, id: @form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form
    assert_response :success
  end

  test "should update form" do
    patch :update, id: @form, form: { address: @form.address, allergies: @form.allergies, allergies_describe: @form.allergies_describe, available_from: @form.available_from, birthday: @form.birthday, car_owner: @form.car_owner, cellphone: @form.cellphone, driver_license: @form.driver_license, education_college: @form.education_college, education_graduation_date: @form.education_graduation_date, education_other: @form.education_other, education_primary: @form.education_primary, education_secundary: @form.education_secundary, education_title: @form.education_title, education_university: @form.education_university, email: @form.email, emergency_contact_name: @form.emergency_contact_name, emergency_contact_phone: @form.emergency_contact_phone, english_dificulty: @form.english_dificulty, english_fluent: @form.english_fluent, english_well: @form.english_well, first_name: @form.first_name, gender_female: @form.gender_female, gender_male: @form.gender_male, gender_other: @form.gender_other, house_phone: @form.house_phone, how_find_out_solamac: @form.how_find_out_solamac, is_car: @form.is_car, is_pickup: @form.is_pickup, is_student: @form.is_student, is_van: @form.is_van, last_name: @form.last_name, legal_to_work: @form.legal_to_work, license_g1: @form.license_g1, license_g2: @form.license_g2, license_g: @form.license_g, main_intersection: @form.main_intersection, nationality: @form.nationality, other_agencies_describe: @form.other_agencies_describe, other_language: @form.other_language, other_language_dificulty: @form.other_language_dificulty, other_language_fluent: @form.other_language_fluent, other_language_well: @form.other_language_well, own_helmet: @form.own_helmet, own_safety_boots: @form.own_safety_boots, own_safety_boots_csa: @form.own_safety_boots_csa, physical_limitations: @form.physical_limitations, physical_limitations_describe: @form.physical_limitations_describe, position_required: @form.position_required, postal_code: @form.postal_code, registered_other_agencies: @form.registered_other_agencies, shift_afternoon: @form.shift_afternoon, shift_day: @form.shift_day, shift_night: @form.shift_night, shift_overnight: @form.shift_overnight, shift_overtime: @form.shift_overtime, shift_weekdays: @form.shift_weekdays, shift_weekends: @form.shift_weekends, sin_number: @form.sin_number, sin_number_expiry: @form.sin_number_expiry, surgery_or_injury: @form.surgery_or_injury, surgery_or_injury_describe: @form.surgery_or_injury_describe, whimis_awareness: @form.whimis_awareness, whimis_describe: @form.whimis_describe, work_history: @form.work_history }
    assert_redirected_to form_path(assigns(:form))
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete :destroy, id: @form
    end

    assert_redirected_to forms_path
  end
end
