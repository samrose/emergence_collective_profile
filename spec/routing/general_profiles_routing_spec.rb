require "spec_helper"

describe GeneralProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/general_profiles").should route_to("general_profiles#index")
    end

    it "routes to #new" do
      get("/general_profiles/new").should route_to("general_profiles#new")
    end

    it "routes to #show" do
      get("/general_profiles/1").should route_to("general_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/general_profiles/1/edit").should route_to("general_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/general_profiles").should route_to("general_profiles#create")
    end

    it "routes to #update" do
      put("/general_profiles/1").should route_to("general_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/general_profiles/1").should route_to("general_profiles#destroy", :id => "1")
    end

  end
end
