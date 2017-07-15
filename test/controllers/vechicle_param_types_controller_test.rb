require 'test_helper'

class VechicleParamTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vechicle_param_type = vechicle_param_types(:one)
  end

  test "should get index" do
    get vechicle_param_types_url
    assert_response :success
  end

  test "should get new" do
    get new_vechicle_param_type_url
    assert_response :success
  end

  test "should create vechicle_param_type" do
    assert_difference('VechicleParamType.count') do
      post vechicle_param_types_url, params: { vechicle_param_type: { name: @vechicle_param_type.name, priority: @vechicle_param_type.priority, status: @vechicle_param_type.status } }
    end

    assert_redirected_to vechicle_param_type_url(VechicleParamType.last)
  end

  test "should show vechicle_param_type" do
    get vechicle_param_type_url(@vechicle_param_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_vechicle_param_type_url(@vechicle_param_type)
    assert_response :success
  end

  test "should update vechicle_param_type" do
    patch vechicle_param_type_url(@vechicle_param_type), params: { vechicle_param_type: { name: @vechicle_param_type.name, priority: @vechicle_param_type.priority, status: @vechicle_param_type.status } }
    assert_redirected_to vechicle_param_type_url(@vechicle_param_type)
  end

  test "should destroy vechicle_param_type" do
    assert_difference('VechicleParamType.count', -1) do
      delete vechicle_param_type_url(@vechicle_param_type)
    end

    assert_redirected_to vechicle_param_types_url
  end
end
