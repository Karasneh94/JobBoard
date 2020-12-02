require "rails_helper"

RSpec.describe JobapplicationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/jobapplications").to route_to("jobapplications#index")
    end

    it "routes to #new" do
      expect(get: "/jobapplications/new").to route_to("jobapplications#new")
    end

    it "routes to #show" do
      expect(get: "/jobapplications/1").to route_to("jobapplications#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/jobapplications/1/edit").to route_to("jobapplications#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/jobapplications").to route_to("jobapplications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/jobapplications/1").to route_to("jobapplications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/jobapplications/1").to route_to("jobapplications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/jobapplications/1").to route_to("jobapplications#destroy", id: "1")
    end
  end
end
