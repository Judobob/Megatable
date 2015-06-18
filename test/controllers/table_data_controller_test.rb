require 'test_helper'

class TableDataControllerTest < ActionController::TestCase
  setup do
    @table_datum = table_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table_datum" do
    assert_difference('TableDatum.count') do
      post :create, table_datum: { name: @table_datum.name }
    end

    assert_redirected_to table_datum_path(assigns(:table_datum))
  end

  test "should show table_datum" do
    get :show, id: @table_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table_datum
    assert_response :success
  end

  test "should update table_datum" do
    patch :update, id: @table_datum, table_datum: { name: @table_datum.name }
    assert_redirected_to table_datum_path(assigns(:table_datum))
  end

  test "should destroy table_datum" do
    assert_difference('TableDatum.count', -1) do
      delete :destroy, id: @table_datum
    end

    assert_redirected_to table_data_path
  end
end
