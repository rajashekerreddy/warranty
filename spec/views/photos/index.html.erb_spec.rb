require 'spec_helper'

describe "photos/index" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :content => "MyText",
        :photable_id => 1,
        :photable_type => "Photable Type"
      ),
      stub_model(Photo,
        :content => "MyText",
        :photable_id => 1,
        :photable_type => "Photable Type"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Photable Type".to_s, :count => 2
  end
end
