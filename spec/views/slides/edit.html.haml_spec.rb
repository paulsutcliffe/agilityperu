require 'spec_helper'

describe "slides/edit" do
  before(:each) do
    @slide = assign(:slide, stub_model(Slide,
      :imagen => "MyString",
      :titulo => "MyString"
    ))
  end

  it "renders the edit slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", slide_path(@slide), "post" do
      assert_select "input#slide_imagen[name=?]", "slide[imagen]"
      assert_select "input#slide_titulo[name=?]", "slide[titulo]"
    end
  end
end
