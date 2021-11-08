
require "rails_helper"

# This makes sure that there is a title and description
# when creating a project
RSpec.describe Project, type: :model do
  context "validations tests" do
    it "ensures the title is present" do
      project = Project.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end

    # Makes sure that a project is actually saved successfully
    it "should be able to save project" do
      project = Project.new(title: "Title", description: "Some description content goes here")
      expect(project.save).to eq(true)
    end
  end

  context "scopes tests" do

  end
end


require "rails_helper"

RSpec.describe Project, type: :model do
  # ...

  # This code creates test projects that will then check
  # to see if all three of them where successfully created
  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end

    # This checks to see that the test projects created above
    # were actually created and are present
    it "should return all projects" do
      expect(Project.count).to eq(3)
    end

  end
end

