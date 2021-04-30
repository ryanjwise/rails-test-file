require "test_helper"

class ScaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaff = scaffs(:one)
  end

  test "should get index" do
    get scaffs_url
    assert_response :success
  end

  test "should get new" do
    get new_scaff_url
    assert_response :success
  end

  test "should create scaff" do
    assert_difference('Scaff.count') do
      post scaffs_url, params: { scaff: { description: @scaff.description, name: @scaff.name, price: @scaff.price } }
    end

    assert_redirected_to scaff_url(Scaff.last)
  end

  test "should show scaff" do
    get scaff_url(@scaff)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaff_url(@scaff)
    assert_response :success
  end

  test "should update scaff" do
    patch scaff_url(@scaff), params: { scaff: { description: @scaff.description, name: @scaff.name, price: @scaff.price } }
    assert_redirected_to scaff_url(@scaff)
  end

  test "should destroy scaff" do
    assert_difference('Scaff.count', -1) do
      delete scaff_url(@scaff)
    end

    assert_redirected_to scaffs_url
  end
end
