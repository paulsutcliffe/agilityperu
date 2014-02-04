require 'spec_helper'

describe "visas/new" do
  before(:each) do
    assign(:visa, stub_model(Visa,
      :titulo => "MyString",
      :imagen => "MyString"
    ).as_new_record)
  end

  it "renders new visa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visas_path, "post" do
      assert_select "input#visa_titulo[name=?]", "visa[titulo]"
      assert_select "input#visa_imagen[name=?]", "visa[imagen]"
    end
  end
end
