require 'spec_helper'

describe "costos/new" do
  before(:each) do
    assign(:costo, stub_model(Costo,
      :titulo => "MyString",
      :contenido => "MyText"
    ).as_new_record)
  end

  it "renders new costo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", costos_path, "post" do
      assert_select "input#costo_titulo[name=?]", "costo[titulo]"
      assert_select "textarea#costo_contenido[name=?]", "costo[contenido]"
    end
  end
end
