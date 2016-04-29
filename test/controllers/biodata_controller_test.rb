require 'test_helper'

class BiodataControllerTest < ActionController::TestCase
  setup do
    @biodatum = biodata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biodata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biodatum" do
    assert_difference('Biodatum.count') do
      post :create, biodatum: { alamat: @biodatum.alamat, nama: @biodatum.nama, ttl: @biodatum.ttl }
    end

    assert_redirected_to biodatum_path(assigns(:biodatum))
  end

  test "should show biodatum" do
    get :show, id: @biodatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biodatum
    assert_response :success
  end

  test "should update biodatum" do
    patch :update, id: @biodatum, biodatum: { alamat: @biodatum.alamat, nama: @biodatum.nama, ttl: @biodatum.ttl }
    assert_redirected_to biodatum_path(assigns(:biodatum))
  end

  test "should destroy biodatum" do
    assert_difference('Biodatum.count', -1) do
      delete :destroy, id: @biodatum
    end

    assert_redirected_to biodata_path
  end
end
