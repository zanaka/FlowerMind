require 'test_helper'

class BouquetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bouquet = bouquets(:one)
  end

  test "should get index" do
    get bouquets_url
    assert_response :success
  end

  test "should get new" do
    get new_bouquet_url
    assert_response :success
  end

  test "should create bouquet" do
    assert_difference('Bouquet.count') do
      post bouquets_url, params: { bouquet: { word1: @bouquet.word1, word2: @bouquet.word2, word3: @bouquet.word3 } }
    end

    assert_redirected_to bouquet_url(Bouquet.last)
  end

  test "should show bouquet" do
    get bouquet_url(@bouquet)
    assert_response :success
  end

  test "should get edit" do
    get edit_bouquet_url(@bouquet)
    assert_response :success
  end

  test "should update bouquet" do
    patch bouquet_url(@bouquet), params: { bouquet: { word1: @bouquet.word1, word2: @bouquet.word2, word3: @bouquet.word3 } }
    assert_redirected_to bouquet_url(@bouquet)
  end

  test "should destroy bouquet" do
    assert_difference('Bouquet.count', -1) do
      delete bouquet_url(@bouquet)
    end

    assert_redirected_to bouquets_url
  end
end
