require 'rails_helper'

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

RSpec.describe SchoolTimeSlotsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # SchoolTimeSlot. As you add validations to SchoolTimeSlot, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SchoolTimeSlotsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all school_time_slots as @school_time_slots" do
      school_time_slot = SchoolTimeSlot.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:school_time_slots)).to eq([school_time_slot])
    end
  end

  describe "GET show" do
    it "assigns the requested school_time_slot as @school_time_slot" do
      school_time_slot = SchoolTimeSlot.create! valid_attributes
      get :show, {:id => school_time_slot.to_param}, valid_session
      expect(assigns(:school_time_slot)).to eq(school_time_slot)
    end
  end

  describe "GET new" do
    it "assigns a new school_time_slot as @school_time_slot" do
      get :new, {}, valid_session
      expect(assigns(:school_time_slot)).to be_a_new(SchoolTimeSlot)
    end
  end

  describe "GET edit" do
    it "assigns the requested school_time_slot as @school_time_slot" do
      school_time_slot = SchoolTimeSlot.create! valid_attributes
      get :edit, {:id => school_time_slot.to_param}, valid_session
      expect(assigns(:school_time_slot)).to eq(school_time_slot)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SchoolTimeSlot" do
        expect {
          post :create, {:school_time_slot => valid_attributes}, valid_session
        }.to change(SchoolTimeSlot, :count).by(1)
      end

      it "assigns a newly created school_time_slot as @school_time_slot" do
        post :create, {:school_time_slot => valid_attributes}, valid_session
        expect(assigns(:school_time_slot)).to be_a(SchoolTimeSlot)
        expect(assigns(:school_time_slot)).to be_persisted
      end

      it "redirects to the created school_time_slot" do
        post :create, {:school_time_slot => valid_attributes}, valid_session
        expect(response).to redirect_to(SchoolTimeSlot.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved school_time_slot as @school_time_slot" do
        post :create, {:school_time_slot => invalid_attributes}, valid_session
        expect(assigns(:school_time_slot)).to be_a_new(SchoolTimeSlot)
      end

      it "re-renders the 'new' template" do
        post :create, {:school_time_slot => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested school_time_slot" do
        school_time_slot = SchoolTimeSlot.create! valid_attributes
        put :update, {:id => school_time_slot.to_param, :school_time_slot => new_attributes}, valid_session
        school_time_slot.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested school_time_slot as @school_time_slot" do
        school_time_slot = SchoolTimeSlot.create! valid_attributes
        put :update, {:id => school_time_slot.to_param, :school_time_slot => valid_attributes}, valid_session
        expect(assigns(:school_time_slot)).to eq(school_time_slot)
      end

      it "redirects to the school_time_slot" do
        school_time_slot = SchoolTimeSlot.create! valid_attributes
        put :update, {:id => school_time_slot.to_param, :school_time_slot => valid_attributes}, valid_session
        expect(response).to redirect_to(school_time_slot)
      end
    end

    describe "with invalid params" do
      it "assigns the school_time_slot as @school_time_slot" do
        school_time_slot = SchoolTimeSlot.create! valid_attributes
        put :update, {:id => school_time_slot.to_param, :school_time_slot => invalid_attributes}, valid_session
        expect(assigns(:school_time_slot)).to eq(school_time_slot)
      end

      it "re-renders the 'edit' template" do
        school_time_slot = SchoolTimeSlot.create! valid_attributes
        put :update, {:id => school_time_slot.to_param, :school_time_slot => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested school_time_slot" do
      school_time_slot = SchoolTimeSlot.create! valid_attributes
      expect {
        delete :destroy, {:id => school_time_slot.to_param}, valid_session
      }.to change(SchoolTimeSlot, :count).by(-1)
    end

    it "redirects to the school_time_slots list" do
      school_time_slot = SchoolTimeSlot.create! valid_attributes
      delete :destroy, {:id => school_time_slot.to_param}, valid_session
      expect(response).to redirect_to(school_time_slots_url)
    end
  end

end
