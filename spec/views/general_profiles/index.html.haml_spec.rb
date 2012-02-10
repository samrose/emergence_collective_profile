require 'spec_helper'

describe "general_profiles/index" do
  before(:each) do
    assign(:general_profiles, [
      stub_model(GeneralProfile),
      stub_model(GeneralProfile)
    ])
  end

  it "renders a list of general_profiles" do
    render
  end
end
