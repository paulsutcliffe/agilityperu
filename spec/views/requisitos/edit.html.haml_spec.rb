require 'spec_helper'

describe "requisitos/edit" do
  before(:each) do
    @requisito = assign(:requisito, stub_model(Requisito,
      :pais => "MyString",
      :contenido => "MyText"
    ))
  end

  it "renders the edit requisito form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requisito_path(@requisito), "post" do
      assert_select "input#requisito_pais[name=?]", "requisito[pais]"
      assert_select "textarea#requisito_contenido[name=?]", "requisito[contenido]"
    end
  end
end
