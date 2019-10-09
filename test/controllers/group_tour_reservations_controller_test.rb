require 'test_helper'

class GroupTourReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get group_tour_reservations_index_url
    assert_response :success
  end

  test "should get show" do
    get group_tour_reservations_show_url
    assert_response :success
  end

  test "should get new" do
    get group_tour_reservations_new_url
    assert_response :success
  end

  test "should get create" do
    get group_tour_reservations_create_url
    assert_response :success
  end

  test "should get edit" do
    get group_tour_reservations_edit_url
    assert_response :success
  end

  test "should get update" do
    get group_tour_reservations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get group_tour_reservations_destroy_url
    assert_response :success
  end

end
