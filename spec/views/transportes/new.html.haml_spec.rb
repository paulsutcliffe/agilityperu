require 'spec_helper'

describe "transportes/new" do
  before(:each) do
    assign(:transporte, stub_model(Transporte,
      :nombre => "MyString",
      :descripcion => "MyText",
      :email => "MyString",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new transporte form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transportes_path, "post" do
      assert_select "input#transporte_nombre[name=?]", "transporte[nombre]"
      assert_select "textarea#transporte_descripcion[name=?]", "transporte[descripcion]"
      assert_select "input#transporte_email[name=?]", "transporte[email]"
      assert_select "input#transporte_website[name=?]", "transporte[website]"
    end
  end
end
