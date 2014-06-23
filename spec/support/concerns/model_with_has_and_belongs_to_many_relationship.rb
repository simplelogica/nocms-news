shared_examples_for "model with has and belongs to many relationship" do |model_name, related_model_factory, model_relationship, related_relationship|

  context "when creating various #{related_relationship}" do

    let(:related_objects)  { create_list related_model_factory, 2 }
    let(:model_object) { create model_name, model_relationship => related_objects }

    before { model_object }
    subject { model_object }

    it("should have both #{model_relationship}"){ expect(subject.send(model_relationship)).to match_array related_objects }

    unless related_relationship.nil?
      context "first related #{related_relationship}" do

        subject { related_objects.first.reload }

        it("should have #{related_relationship}") { expect(subject.send(related_relationship)).to include  model_object }

      end

      context "last related #{related_relationship}" do

        subject { related_objects.last.reload }

        it("should have #{related_relationship}") { expect(subject.send(related_relationship)).to include  model_object }

      end
    end
  end

end
