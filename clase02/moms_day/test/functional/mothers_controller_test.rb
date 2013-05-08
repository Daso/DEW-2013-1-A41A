require 'test_helper'

class MothersControllerTest < ActionController::TestCase
  setup do
    @mother = mothers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mothers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mother" do
    assert_difference('Mother.count') do
      post :create, mother: { name: @mother.name }
    end

    assert_redirected_to mother_path(assigns(:mother))
  end

  test "should show mother" do
    get :show, id: @mother
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mother
    assert_response :success
  end

  test "should update mother" do
    put :update, id: @mother, mother: { name: @mother.name }
    assert_redirected_to mother_path(assigns(:mother))
  end

  test "should destroy mother" do
    assert_difference('Mother.count', -1) do
      delete :destroy, id: @mother
    end

    assert_redirected_to mothers_path
  end
end
