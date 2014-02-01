require 'spec_helper'

describe "slides/new" do
  before(:each) do
    assign(:slide, stub_model(Slide,
      :imagen => "MyString",
      :titulo => "MyString"
    ).as_new_record)
  end

  it "renders new slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", slides_path, "post" do
      assert_select "input#slide_imagen[name=?]", "slide[imagen]"
      assert_select "input#slide_titulo[name=?]", "slide[titulo]"
    end
  end
end
