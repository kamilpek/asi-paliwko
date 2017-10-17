require 'test_helper'

# test class of Vechicle Notes Controller 
class VechicleNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vechicle_note = vechicle_notes(:one)
  end

  test "should get index" do
    get vechicle_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_vechicle_note_url
    assert_response :success
  end

  test "should create vechicle_note" do
    assert_difference('VechicleNote.count') do
      post vechicle_notes_url, params: { vechicle_note: { name: @vechicle_note.name, user_id: @vechicle_note.user_id, vechicle_id: @vechicle_note.vechicle_id } }
    end

    assert_redirected_to vechicle_note_url(VechicleNote.last)
  end

  test "should show vechicle_note" do
    get vechicle_note_url(@vechicle_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_vechicle_note_url(@vechicle_note)
    assert_response :success
  end

  test "should update vechicle_note" do
    patch vechicle_note_url(@vechicle_note), params: { vechicle_note: { name: @vechicle_note.name, user_id: @vechicle_note.user_id, vechicle_id: @vechicle_note.vechicle_id } }
    assert_redirected_to vechicle_note_url(@vechicle_note)
  end

  test "should destroy vechicle_note" do
    assert_difference('VechicleNote.count', -1) do
      delete vechicle_note_url(@vechicle_note)
    end

    assert_redirected_to vechicle_notes_url
  end
end
