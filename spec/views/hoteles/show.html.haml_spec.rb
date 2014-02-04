require 'spec_helper'

describe "hoteles/show" do
  before(:each) do
    @hotel = assign(:hotel, stub_model(Hotel,
      :nombre => "Nombre",
      :descripcion => "MyText",
      :email => "Email",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
  end
end
