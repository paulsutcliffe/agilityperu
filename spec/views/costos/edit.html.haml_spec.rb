require 'spec_helper'

describe "costos/edit" do
  before(:each) do
    @costo = assign(:costo, stub_model(Costo,
      :titulo => "MyString",
      :contenido => "MyText"
    ))
  end

  it "renders the edit costo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", costo_path(@costo), "post" do
      assert_select "input#costo_titulo[name=?]", "costo[titulo]"
      assert_select "textarea#costo_contenido[name=?]", "costo[contenido]"
    end
  end
end
