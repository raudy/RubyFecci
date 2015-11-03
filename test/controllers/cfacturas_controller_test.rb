require 'test_helper'

class CfacturasControllerTest < ActionController::TestCase
  setup do
    @cfactura = cfacturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cfacturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cfactura" do
    assert_difference('Cfactura.count') do
      post :create, cfactura: { cliente_id: @cfactura.cliente_id, fecha: @cfactura.fecha, mbruto: @cfactura.mbruto, mneto: @cfactura.mneto, num: @cfactura.num }
    end

    assert_redirected_to cfactura_path(assigns(:cfactura))
  end

  test "should show cfactura" do
    get :show, id: @cfactura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cfactura
    assert_response :success
  end

  test "should update cfactura" do
    patch :update, id: @cfactura, cfactura: { cliente_id: @cfactura.cliente_id, fecha: @cfactura.fecha, mbruto: @cfactura.mbruto, mneto: @cfactura.mneto, num: @cfactura.num }
    assert_redirected_to cfactura_path(assigns(:cfactura))
  end

  test "should destroy cfactura" do
    assert_difference('Cfactura.count', -1) do
      delete :destroy, id: @cfactura
    end

    assert_redirected_to cfacturas_path
  end
end
