require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :content => "MyText",
      :photable_id => 1,
      :photable_type => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "textarea#photo_content[name=?]", "photo[content]"
      assert_select "input#photo_photable_id[name=?]", "photo[photable_id]"
      assert_select "input#photo_photable_type[name=?]", "photo[photable_type]"
    end
  end
end
