require 'test_helper'

class VechicleParamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vechicle_param = vechicle_params(:one)
  end

  test "should get index" do
    get vechicle_params_url
    assert_response :success
  end

  test "should get new" do
    get new_vechicle_param_url
    assert_response :success
  end

  test "should create vechicle_param" do
    assert_difference('VechicleParam.count') do
      post vechicle_params_url, params: { vechicle_param: { desc: @vechicle_param.desc, user_id: @vechicle_param.user_id, value: @vechicle_param.value, vechicle_param_type_id: @vechicle_param.vechicle_param_type_id } }
    end

    assert_redirected_to vechicle_param_url(VechicleParam.last)
  end

  test "should show vechicle_param" do
    get vechicle_param_url(@vechicle_param)
    assert_response :success
  end

  test "should get edit" do
    get edit_vechicle_param_url(@vechicle_param)
    assert_response :success
  end

  test "should update vechicle_param" do
    patch vechicle_param_url(@vechicle_param), params: { vechicle_param: { desc: @vechicle_param.desc, user_id: @vechicle_param.user_id, value: @vechicle_param.value, vechicle_param_type_id: @vechicle_param.vechicle_param_type_id } }
    assert_redirected_to vechicle_param_url(@vechicle_param)
  end

  test "should destroy vechicle_param" do
    assert_difference('VechicleParam.count', -1) do
      delete vechicle_param_url(@vechicle_param)
    end

    assert_redirected_to vechicle_params_url
  end
end
