require 'spec_helper'

describe "requisitos/new" do
  before(:each) do
    assign(:requisito, stub_model(Requisito,
      :pais => "MyString",
      :contenido => "MyText"
    ).as_new_record)
  end

  it "renders new requisito form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requisitos_path, "post" do
      assert_select "input#requisito_pais[name=?]", "requisito[pais]"
      assert_select "textarea#requisito_contenido[name=?]", "requisito[contenido]"
    end
  end
end
