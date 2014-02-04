require 'spec_helper'

describe "transportes/edit" do
  before(:each) do
    @transporte = assign(:transporte, stub_model(Transporte,
      :nombre => "MyString",
      :descripcion => "MyText",
      :email => "MyString",
      :website => "MyString"
    ))
  end

  it "renders the edit transporte form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transporte_path(@transporte), "post" do
      assert_select "input#transporte_nombre[name=?]", "transporte[nombre]"
      assert_select "textarea#transporte_descripcion[name=?]", "transporte[descripcion]"
      assert_select "input#transporte_email[name=?]", "transporte[email]"
      assert_select "input#transporte_website[name=?]", "transporte[website]"
    end
  end
end
