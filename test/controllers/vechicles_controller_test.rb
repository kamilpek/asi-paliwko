require 'test_helper'

# test class of Vechicles Controller 
class VechiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vechicle = vechicles(:one)
  end

  test "should get index" do
    get vechicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vechicle_url
    assert_response :success
  end

  test "should create vechicle" do
    assert_difference('Vechicle.count') do
      post vechicles_url, params: { vechicle: { attachments: @vechicle.attachments, desc: @vechicle.desc, lastrevision: @vechicle.lastrevision, mileage: @vechicle.mileage, name: @vechicle.name, nextrevison: @vechicle.nextrevison, photo: @vechicle.photo, plates: @vechicle.plates, productiondate: @vechicle.productiondate, registration: @vechicle.registration, status: @vechicle.status } }
    end

    assert_redirected_to vechicle_url(Vechicle.last)
  end

  test "should show vechicle" do
    get vechicle_url(@vechicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vechicle_url(@vechicle)
    assert_response :success
  end

  test "should update vechicle" do
    patch vechicle_url(@vechicle), params: { vechicle: { attachments: @vechicle.attachments, desc: @vechicle.desc, lastrevision: @vechicle.lastrevision, mileage: @vechicle.mileage, name: @vechicle.name, nextrevison: @vechicle.nextrevison, photo: @vechicle.photo, plates: @vechicle.plates, productiondate: @vechicle.productiondate, registration: @vechicle.registration, status: @vechicle.status } }
    assert_redirected_to vechicle_url(@vechicle)
  end

  test "should destroy vechicle" do
    assert_difference('Vechicle.count', -1) do
      delete vechicle_url(@vechicle)
    end

    assert_redirected_to vechicles_url
  end
end
