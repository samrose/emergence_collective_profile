require 'spec_helper'

describe "general_profiles/edit" do
  before(:each) do
    @general_profile = assign(:general_profile, stub_model(GeneralProfile))
  end

  it "renders the edit general_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => general_profiles_path(@general_profile), :method => "post" do
    end
  end
end
