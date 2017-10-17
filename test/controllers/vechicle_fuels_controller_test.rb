require 'test_helper'

# test class of Vechicle Fuels Controller 
class VechicleFuelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vechicle_fuel = vechicle_fuels(:one)
  end

  test "should get index" do
    get vechicle_fuels_url
    assert_response :success
  end

  test "should get new" do
    get new_vechicle_fuel_url
    assert_response :success
  end

  test "should create vechicle_fuel" do
    assert_difference('VechicleFuel.count') do
      post vechicle_fuels_url, params: { vechicle_fuel: { company: @vechicle_fuel.company, desc: @vechicle_fuel.desc, mileage: @vechicle_fuel.mileage, user_id: @vechicle_fuel.user_id, value: @vechicle_fuel.value, vechicle_id: @vechicle_fuel.vechicle_id } }
    end

    assert_redirected_to vechicle_fuel_url(VechicleFuel.last)
  end

  test "should show vechicle_fuel" do
    get vechicle_fuel_url(@vechicle_fuel)
    assert_response :success
  end

  test "should get edit" do
    get edit_vechicle_fuel_url(@vechicle_fuel)
    assert_response :success
  end

  test "should update vechicle_fuel" do
    patch vechicle_fuel_url(@vechicle_fuel), params: { vechicle_fuel: { company: @vechicle_fuel.company, desc: @vechicle_fuel.desc, mileage: @vechicle_fuel.mileage, user_id: @vechicle_fuel.user_id, value: @vechicle_fuel.value, vechicle_id: @vechicle_fuel.vechicle_id } }
    assert_redirected_to vechicle_fuel_url(@vechicle_fuel)
  end

  test "should destroy vechicle_fuel" do
    assert_difference('VechicleFuel.count', -1) do
      delete vechicle_fuel_url(@vechicle_fuel)
    end

    assert_redirected_to vechicle_fuels_url
  end
end
