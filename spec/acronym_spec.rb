require_relative '../lib/acronym'

describe "Testing our acronymize method "do 
    it "should return the acronym of the words" do 
        expect(acronymize('What the hell')).to eq('WTH')
    end
end