require "spec_helper"

describe TypeAddressesController do
  describe "routing" do

    it "routes to #index" do
      get("/type_addresses").should route_to("type_addresses#index")
    end

    it "routes to #new" do
      get("/type_addresses/new").should route_to("type_addresses#new")
    end

    it "routes to #show" do
      get("/type_addresses/1").should route_to("type_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/type_addresses/1/edit").should route_to("type_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/type_addresses").should route_to("type_addresses#create")
    end

    it "routes to #update" do
      put("/type_addresses/1").should route_to("type_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/type_addresses/1").should route_to("type_addresses#destroy", :id => "1")
    end

  end
end
