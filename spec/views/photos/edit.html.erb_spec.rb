require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :content => "MyText",
      :photable_id => 1,
      :photable_type => "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do
      assert_select "textarea#photo_content[name=?]", "photo[content]"
      assert_select "input#photo_photable_id[name=?]", "photo[photable_id]"
      assert_select "input#photo_photable_type[name=?]", "photo[photable_type]"
    end
  end
end
