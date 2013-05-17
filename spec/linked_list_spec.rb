require "linked_list"

describe LinkedList do
  context "with no elements" do
    it "is empty" do
      subject.should be_empty
    end
  end
end
