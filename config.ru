require "roda"
require_relative "roda_run_me/config/environment"

class RodaRunsRails < Roda
  route do |r|
    r.root{"Hello"}
    r.on "rails" do
      r.run Rails.application
    end
  end
end

run RodaRunsRails.freeze.app
