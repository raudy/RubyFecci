require 'test_helper'

class DfacturasControllerTest < ActionController::TestCase
  setup do
    @dfactura = dfacturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dfacturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dfactura" do
    assert_difference('Dfactura.count') do
      post :create, dfactura: { cantidad: @dfactura.cantidad, cfactura_id: @dfactura.cfactura_id, hh: @dfactura.hh, producto_id: @dfactura.producto_id }
    end

    assert_redirected_to dfactura_path(assigns(:dfactura))
  end

  test "should show dfactura" do
    get :show, id: @dfactura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dfactura
    assert_response :success
  end

  test "should update dfactura" do
    patch :update, id: @dfactura, dfactura: { cantidad: @dfactura.cantidad, cfactura_id: @dfactura.cfactura_id, hh: @dfactura.hh, producto_id: @dfactura.producto_id }
    assert_redirected_to dfactura_path(assigns(:dfactura))
  end

  test "should destroy dfactura" do
    assert_difference('Dfactura.count', -1) do
      delete :destroy, id: @dfactura
    end

    assert_redirected_to dfacturas_path
  end
end
