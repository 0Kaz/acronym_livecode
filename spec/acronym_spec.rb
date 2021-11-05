require_relative '../lib/acronym'

describe "Testing our acronimyze method" do 
    it "should return the acronym of the words" do 
        expect(acronymize("what the hell")).to eq("WTH")
    end
end