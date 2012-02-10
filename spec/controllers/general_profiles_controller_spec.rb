require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GeneralProfilesController do

  # This should return the minimal set of attributes required to create a valid
  # GeneralProfile. As you add validations to GeneralProfile, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GeneralProfilesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all general_profiles as @general_profiles" do
      general_profile = GeneralProfile.create! valid_attributes
      get :index, {}, valid_session
      assigns(:general_profiles).should eq([general_profile])
    end
  end

  describe "GET show" do
    it "assigns the requested general_profile as @general_profile" do
      general_profile = GeneralProfile.create! valid_attributes
      get :show, {:id => general_profile.to_param}, valid_session
      assigns(:general_profile).should eq(general_profile)
    end
  end

  describe "GET new" do
    it "assigns a new general_profile as @general_profile" do
      get :new, {}, valid_session
      assigns(:general_profile).should be_a_new(GeneralProfile)
    end
  end

  describe "GET edit" do
    it "assigns the requested general_profile as @general_profile" do
      general_profile = GeneralProfile.create! valid_attributes
      get :edit, {:id => general_profile.to_param}, valid_session
      assigns(:general_profile).should eq(general_profile)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GeneralProfile" do
        expect {
          post :create, {:general_profile => valid_attributes}, valid_session
        }.to change(GeneralProfile, :count).by(1)
      end

      it "assigns a newly created general_profile as @general_profile" do
        post :create, {:general_profile => valid_attributes}, valid_session
        assigns(:general_profile).should be_a(GeneralProfile)
        assigns(:general_profile).should be_persisted
      end

      it "redirects to the created general_profile" do
        post :create, {:general_profile => valid_attributes}, valid_session
        response.should redirect_to(GeneralProfile.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved general_profile as @general_profile" do
        # Trigger the behavior that occurs when invalid params are submitted
        GeneralProfile.any_instance.stub(:save).and_return(false)
        post :create, {:general_profile => {}}, valid_session
        assigns(:general_profile).should be_a_new(GeneralProfile)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        GeneralProfile.any_instance.stub(:save).and_return(false)
        post :create, {:general_profile => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested general_profile" do
        general_profile = GeneralProfile.create! valid_attributes
        # Assuming there are no other general_profiles in the database, this
        # specifies that the GeneralProfile created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        GeneralProfile.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => general_profile.to_param, :general_profile => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested general_profile as @general_profile" do
        general_profile = GeneralProfile.create! valid_attributes
        put :update, {:id => general_profile.to_param, :general_profile => valid_attributes}, valid_session
        assigns(:general_profile).should eq(general_profile)
      end

      it "redirects to the general_profile" do
        general_profile = GeneralProfile.create! valid_attributes
        put :update, {:id => general_profile.to_param, :general_profile => valid_attributes}, valid_session
        response.should redirect_to(general_profile)
      end
    end

    describe "with invalid params" do
      it "assigns the general_profile as @general_profile" do
        general_profile = GeneralProfile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GeneralProfile.any_instance.stub(:save).and_return(false)
        put :update, {:id => general_profile.to_param, :general_profile => {}}, valid_session
        assigns(:general_profile).should eq(general_profile)
      end

      it "re-renders the 'edit' template" do
        general_profile = GeneralProfile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GeneralProfile.any_instance.stub(:save).and_return(false)
        put :update, {:id => general_profile.to_param, :general_profile => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested general_profile" do
      general_profile = GeneralProfile.create! valid_attributes
      expect {
        delete :destroy, {:id => general_profile.to_param}, valid_session
      }.to change(GeneralProfile, :count).by(-1)
    end

    it "redirects to the general_profiles list" do
      general_profile = GeneralProfile.create! valid_attributes
      delete :destroy, {:id => general_profile.to_param}, valid_session
      response.should redirect_to(general_profiles_url)
    end
  end

end