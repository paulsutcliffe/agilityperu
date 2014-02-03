require 'spec_helper'

describe "auspiciadores/index" do
  before(:each) do
    assign(:auspiciadores, [
      stub_model(Auspiciador,
        :imagen => "Imagen",
        :nombre => "Nombre",
        :descripcion => "MyText"
      ),
      stub_model(Auspiciador,
        :imagen => "Imagen",
        :nombre => "Nombre",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of auspiciadores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Imagen".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
