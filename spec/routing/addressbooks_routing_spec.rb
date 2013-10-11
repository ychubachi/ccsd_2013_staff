require "spec_helper"

describe AddressbooksController do
  describe "routing" do

    it "routes to #index" do
      get("/addressbooks").should route_to("addressbooks#index")
    end

    it "routes to #new" do
      get("/addressbooks/new").should route_to("addressbooks#new")
    end

    it "routes to #show" do
      get("/addressbooks/1").should route_to("addressbooks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/addressbooks/1/edit").should route_to("addressbooks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/addressbooks").should route_to("addressbooks#create")
    end

    it "routes to #update" do
      put("/addressbooks/1").should route_to("addressbooks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/addressbooks/1").should route_to("addressbooks#destroy", :id => "1")
    end

  end
end
