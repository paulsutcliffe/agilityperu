require 'spec_helper'

describe "jueces/show" do
  before(:each) do
    @juez = assign(:juez, stub_model(Juez,
      :foto => "Foto",
      :nombre => "Nombre",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Foto/)
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
  end
end
