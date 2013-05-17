require "linked_list"

describe LinkedList do

  shared_examples_for "a new element can be inserted" do
      let(:element) { Object.new }
      let(:action) { ->() { subject.insert element } }

      it "increases the length by one" do
        expect(action).to change { subject.length }.by(1)
      end

      it "inserts at the head of the list" do
        expect(action).to change { subject.head.value }.to(element)
      end

      it "push the original head in one" do
        original_head = subject.head
        action.call
        subject.head.next.should be(original_head)
      end
  end

  context "with no elements" do
    it "is empty" do
      subject.should be_empty
    end

    it "has a length of zero" do
      subject.should have(0).items
    end

    it "has an empty string representation" do
      subject.to_s.should == ""
    end

    it_should_behave_like "a new element can be inserted"
  end

  context "with one element" do
    let(:first_element) { Object.new }
    before do
      subject.insert first_element
    end

    it "has a length of one" do
      subject.should have(1).item
    end

    it "is not empty" do
      subject.should_not be_empty
    end

    it_should_behave_like "a new element can be inserted"
  end
end
