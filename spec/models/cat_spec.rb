require 'rails_helper'

require 'spec_helper'

describe Cat do
  before { @cat = Cat.new(name: "Fluffy", trait: "She sheds, so crazy right?") }

  subject { @cat }

  it { should respond_to(:name) }
  it { should respond_to(:gender) }
  it { should respond_to(:trait) }

  it { should be_valid }

  describe "validations" do
    describe "name" do
      context "is blank" do
        before { @cat.name = " " }
        it { should_not be_valid} 
      end

      context "too long" do
        it "is invalid" do
          @cat.name = "a" * 100
          expect(@cat).to_not be_valid
      end
    end
  end

    describe "gender" do
      context "not M or F" do
        before { @cat.gender = "blah" }
        it { should_not be_valid }
      end
    end

    describe "trait" do
      context "is blank" do
        before { @cat.trait = " " }
        it { should_not be_valid}
      end
    end
  end
end
