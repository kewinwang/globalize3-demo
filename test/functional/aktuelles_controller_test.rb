require 'test_helper'

class AktuellesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Aktuelle.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Aktuelle.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Aktuelle.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to aktuelle_url(assigns(:aktuelle))
  end

  def test_edit
    get :edit, :id => Aktuelle.first
    assert_template 'edit'
  end

  def test_update_invalid
    Aktuelle.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Aktuelle.first
    assert_template 'edit'
  end

  def test_update_valid
    Aktuelle.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Aktuelle.first
    assert_redirected_to aktuelle_url(assigns(:aktuelle))
  end

  def test_destroy
    aktuelle = Aktuelle.first
    delete :destroy, :id => aktuelle
    assert_redirected_to aktuelles_url
    assert !Aktuelle.exists?(aktuelle.id)
  end
end
