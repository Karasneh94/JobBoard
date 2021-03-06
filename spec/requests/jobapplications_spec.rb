 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/jobapplications", type: :request do
  # Jobapplication. As you add validations to Jobapplication, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Jobapplication.create! valid_attributes
      get jobapplications_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      jobapplication = Jobapplication.create! valid_attributes
      get jobapplication_url(jobapplication)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_jobapplication_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      jobapplication = Jobapplication.create! valid_attributes
      get edit_jobapplication_url(jobapplication)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Jobapplication" do
        expect {
          post jobapplications_url, params: { jobapplication: valid_attributes }
        }.to change(Jobapplication, :count).by(1)
      end

      it "redirects to the created jobapplication" do
        post jobapplications_url, params: { jobapplication: valid_attributes }
        expect(response).to redirect_to(jobapplication_url(Jobapplication.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Jobapplication" do
        expect {
          post jobapplications_url, params: { jobapplication: invalid_attributes }
        }.to change(Jobapplication, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post jobapplications_url, params: { jobapplication: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested jobapplication" do
        jobapplication = Jobapplication.create! valid_attributes
        patch jobapplication_url(jobapplication), params: { jobapplication: new_attributes }
        jobapplication.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the jobapplication" do
        jobapplication = Jobapplication.create! valid_attributes
        patch jobapplication_url(jobapplication), params: { jobapplication: new_attributes }
        jobapplication.reload
        expect(response).to redirect_to(jobapplication_url(jobapplication))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        jobapplication = Jobapplication.create! valid_attributes
        patch jobapplication_url(jobapplication), params: { jobapplication: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested jobapplication" do
      jobapplication = Jobapplication.create! valid_attributes
      expect {
        delete jobapplication_url(jobapplication)
      }.to change(Jobapplication, :count).by(-1)
    end

    it "redirects to the jobapplications list" do
      jobapplication = Jobapplication.create! valid_attributes
      delete jobapplication_url(jobapplication)
      expect(response).to redirect_to(jobapplications_url)
    end
  end
end
