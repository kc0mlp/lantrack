require 'test_helper'

class AttendeesControllerTest < ActionController::TestCase
  setup do
    @attendee = attendees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendee" do
    assert_difference('Attendee.count') do
      post :create, attendee: { attendee_code: @attendee.attendee_code, created_by: @attendee.created_by, first_name: @attendee.first_name, handle: @attendee.handle, last_name: @attendee.last_name, phone_number: @attendee.phone_number }
    end

    assert_redirected_to attendee_path(assigns(:attendee))
  end

  test "should show attendee" do
    get :show, id: @attendee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendee
    assert_response :success
  end

  test "should update attendee" do
    put :update, id: @attendee, attendee: { attendee_code: @attendee.attendee_code, created_by: @attendee.created_by, first_name: @attendee.first_name, handle: @attendee.handle, last_name: @attendee.last_name, phone_number: @attendee.phone_number }
    assert_redirected_to attendee_path(assigns(:attendee))
  end

  test "should destroy attendee" do
    assert_difference('Attendee.count', -1) do
      delete :destroy, id: @attendee
    end

    assert_redirected_to attendees_path
  end
end
