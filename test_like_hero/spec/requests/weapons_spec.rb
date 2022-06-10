require 'rails_helper'

RSpec.describe "Weapons", type: :request do
  describe "GET /weapons" do
    context "when list weapons" do
      it "show names"
      it "show current powers"
      it "show titles"
    end
  end

  describe "POST /weapons" do
    context "with parameters valid" do
      it "has attributes valid"
    end

    context "with parameters invalid" do
      it "has attributes invalid"
    end
  end

  describe "DELETE /weapons/:id" do
    context "when weapon delete" do
      it "check weapon delete"
    end
  end

  describe "GET /weapons/:id" do
    context "when show weapon" do
      it "check attributes weapon complete"
    end
  end
end
