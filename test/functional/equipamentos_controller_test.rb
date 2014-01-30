require 'test_helper'

class EquipamentosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipamento" do
    assert_difference('Equipamento.count') do
      post :create, :equipment => { }
    end

    assert_redirected_to equipamento_path(assigns(:equipment))
  end

  test "should show equipamento" do
    get :show, :id => equipamentos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => equipamentos(:one).to_param
    assert_response :success
  end

  test "should update equipamento" do
    put :update, :id => equipamentos(:one).to_param, :equipment => { }
    assert_redirected_to equipamento_path(assigns(:equipment))
  end

  test "should destroy equipamento" do
    assert_difference('Equipamento.count', -1) do
      delete :destroy, :id => equipamentos(:one).to_param
    end

    assert_redirected_to equipamentos_path
  end
end
