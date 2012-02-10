require 'spec_helper'

describe "general_profiles/show" do
  before(:each) do
    @general_profile = assign(:general_profile, stub_model(GeneralProfile))
  end

  it "renders attributes in <p>" do
    render
  end
end
