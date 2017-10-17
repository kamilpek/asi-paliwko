require 'test_helper'

# test class of Vechicle CostsController 
class VechicleCostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vechicle_cost = vechicle_costs(:one)
  end

  test "should get index" do
    get vechicle_costs_url
    assert_response :success
  end

  test "should get new" do
    get new_vechicle_cost_url
    assert_response :success
  end

  test "should create vechicle_cost" do
    assert_difference('VechicleCost.count') do
      post vechicle_costs_url, params: { vechicle_cost: { cost: @vechicle_cost.cost, desc: @vechicle_cost.desc, name: @vechicle_cost.name, user_id: @vechicle_cost.user_id, vechicle_id: @vechicle_cost.vechicle_id } }
    end

    assert_redirected_to vechicle_cost_url(VechicleCost.last)
  end

  test "should show vechicle_cost" do
    get vechicle_cost_url(@vechicle_cost)
    assert_response :success
  end

  test "should get edit" do
    get edit_vechicle_cost_url(@vechicle_cost)
    assert_response :success
  end

  test "should update vechicle_cost" do
    patch vechicle_cost_url(@vechicle_cost), params: { vechicle_cost: { cost: @vechicle_cost.cost, desc: @vechicle_cost.desc, name: @vechicle_cost.name, user_id: @vechicle_cost.user_id, vechicle_id: @vechicle_cost.vechicle_id } }
    assert_redirected_to vechicle_cost_url(@vechicle_cost)
  end

  test "should destroy vechicle_cost" do
    assert_difference('VechicleCost.count', -1) do
      delete vechicle_cost_url(@vechicle_cost)
    end

    assert_redirected_to vechicle_costs_url
  end
end
