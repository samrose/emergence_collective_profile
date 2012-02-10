require 'spec_helper'

describe "general_profiles/new" do
  before(:each) do
    assign(:general_profile, stub_model(GeneralProfile).as_new_record)
  end

  it "renders new general_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => general_profiles_path, :method => "post" do
    end
  end
end
