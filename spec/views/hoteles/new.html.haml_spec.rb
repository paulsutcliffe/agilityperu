require 'spec_helper'

describe "hoteles/new" do
  before(:each) do
    assign(:hotel, stub_model(Hotel,
      :nombre => "MyString",
      :descripcion => "MyText",
      :email => "MyString",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new hotel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hoteles_path, "post" do
      assert_select "input#hotel_nombre[name=?]", "hotel[nombre]"
      assert_select "textarea#hotel_descripcion[name=?]", "hotel[descripcion]"
      assert_select "input#hotel_email[name=?]", "hotel[email]"
      assert_select "input#hotel_website[name=?]", "hotel[website]"
    end
  end
end
