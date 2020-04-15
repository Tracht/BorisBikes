require "BorisBikes.rb"

describe Bike do
  it "works or not" do
    is_expected.to respond_to(:working?)
  end
end
