require 'test_helper'

class TashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tash = tashes(:one)
  end

  test "should get index" do
    get tashes_url
    assert_response :success
  end

  test "should get new" do
    get new_tash_url
    assert_response :success
  end

  test "should create tash" do
    assert_difference('Tash.count') do
      post tashes_url, params: { tash: { content: @tash.content } }
    end

    assert_redirected_to tash_url(Tash.last)
  end

  test "should show tash" do
    get tash_url(@tash)
    assert_response :success
  end

  test "should get edit" do
    get edit_tash_url(@tash)
    assert_response :success
  end

  test "should update tash" do
    patch tash_url(@tash), params: { tash: { content: @tash.content } }
    assert_redirected_to tash_url(@tash)
  end

  test "should destroy tash" do
    assert_difference('Tash.count', -1) do
      delete tash_url(@tash)
    end

    assert_redirected_to tashes_url
  end
end
