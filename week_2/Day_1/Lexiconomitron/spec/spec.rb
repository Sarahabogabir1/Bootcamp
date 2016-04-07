
require_relative"../lib/Lexi.rb"

RSpec.describe Lexiconomitron do
    before :each do
        @lexi = Lexiconomitron.new
     end

    describe "eat_t"do
        it "removes every letter t from the input" do
            expect(@lexi.eat_t("great scott!")).to eq("great scott!".delete "t")
        end
    end
end