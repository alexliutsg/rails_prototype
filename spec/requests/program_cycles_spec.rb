require 'rails_helper'

RSpec.describe "ProgramCycles", :type => :request do
  describe "GET /program_cycles" do
    it "works! (now write some real specs)" do
      get program_cycles_path
      expect(response).to have_http_status(200)
    end
  end
end