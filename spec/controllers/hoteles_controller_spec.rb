require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe HotelesController do

  # This should return the minimal set of attributes required to create a valid
  # Hotel. As you add validations to Hotel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nombre" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HotelesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all hoteles as @hoteles" do
      hotel = Hotel.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:hoteles)).to eq([hotel])
    end
  end

  describe "GET show" do
    it "assigns the requested hotel as @hotel" do
      hotel = Hotel.create! valid_attributes
      get :show, {:id => hotel.to_param}, valid_session
      expect(assigns(:hotel)).to eq(hotel)
    end
  end

  describe "GET new" do
    it "assigns a new hotel as @hotel" do
      get :new, {}, valid_session
      expect(assigns(:hotel)).to be_a_new(Hotel)
    end
  end

  describe "GET edit" do
    it "assigns the requested hotel as @hotel" do
      hotel = Hotel.create! valid_attributes
      get :edit, {:id => hotel.to_param}, valid_session
      expect(assigns(:hotel)).to eq(hotel)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Hotel" do
        expect {
          post :create, {:hotel => valid_attributes}, valid_session
        }.to change(Hotel, :count).by(1)
      end

      it "assigns a newly created hotel as @hotel" do
        post :create, {:hotel => valid_attributes}, valid_session
        expect(assigns(:hotel)).to be_a(Hotel)
        expect(assigns(:hotel)).to be_persisted
      end

      it "redirects to the created hotel" do
        post :create, {:hotel => valid_attributes}, valid_session
        expect(response).to redirect_to(Hotel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved hotel as @hotel" do
        # Trigger the behavior that occurs when invalid params are submitted
        Hotel.any_instance.stub(:save).and_return(false)
        post :create, {:hotel => { "nombre" => "invalid value" }}, valid_session
        expect(assigns(:hotel)).to be_a_new(Hotel)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Hotel.any_instance.stub(:save).and_return(false)
        post :create, {:hotel => { "nombre" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested hotel" do
        hotel = Hotel.create! valid_attributes
        # Assuming there are no other hoteles in the database, this
        # specifies that the Hotel created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Hotel).to receive(:update).with({ "nombre" => "MyString" })
        put :update, {:id => hotel.to_param, :hotel => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested hotel as @hotel" do
        hotel = Hotel.create! valid_attributes
        put :update, {:id => hotel.to_param, :hotel => valid_attributes}, valid_session
        expect(assigns(:hotel)).to eq(hotel)
      end

      it "redirects to the hotel" do
        hotel = Hotel.create! valid_attributes
        put :update, {:id => hotel.to_param, :hotel => valid_attributes}, valid_session
        expect(response).to redirect_to(hotel)
      end
    end

    describe "with invalid params" do
      it "assigns the hotel as @hotel" do
        hotel = Hotel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Hotel.any_instance.stub(:save).and_return(false)
        put :update, {:id => hotel.to_param, :hotel => { "nombre" => "invalid value" }}, valid_session
        expect(assigns(:hotel)).to eq(hotel)
      end

      it "re-renders the 'edit' template" do
        hotel = Hotel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Hotel.any_instance.stub(:save).and_return(false)
        put :update, {:id => hotel.to_param, :hotel => { "nombre" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested hotel" do
      hotel = Hotel.create! valid_attributes
      expect {
        delete :destroy, {:id => hotel.to_param}, valid_session
      }.to change(Hotel, :count).by(-1)
    end

    it "redirects to the hoteles list" do
      hotel = Hotel.create! valid_attributes
      delete :destroy, {:id => hotel.to_param}, valid_session
      expect(response).to redirect_to(hoteles_url)
    end
  end

end
