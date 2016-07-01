require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  let(:valid_attributes) do
  	attributes_for(:project)
  end

  let(:invalid_attributes) do
  	attributes_for(:project, :invalid)
  end

  context "valid parameters" do
  	subject { post :create, {project: valid_attributes}, {} }

	  it "should create project" do
	  	subject
	  	expect(assigns(:project)).to be_a(Project)
	  end

	  it "should render the index template" do
	  	expect(subject).to redirect_to(Project)
	  end
  end

  context "invalid parameters" do
  	subject { post :create, {project: invalid_attributes}, {} }

	  it "should create project" do
	  	subject
	  	expect(assigns(:project).valid?).to be false
	  end

	  it "should render the new template" do
	  	expect(subject).to render_template(:new)
	  end
  end

  context "valid parameters" do
	  it "should show project" do
	  	project = Project.create!(valid_attributes)

	  	get :show, {id: project.id}, {}

	  	expect(assigns(:project)).to eq(project)
	  end

	  it "should render the show template" do
	  	project = Project.create(valid_attributes)
	  	get :show, {id: project.id}, {}
	  	expect(response).to render_template(:show)
	  end
  end

  
  context "valid parameters" do
	  it "should destory project" do
	  	project = Project.create!(valid_attributes)

	  	delete :destroy, {id: project.id}, {}
	  	expect(Project.find_by_id project.id).to be nil
	  end

	  it "should render the index template" do
	  	project = Project.create!(valid_attributes)

	  	delete :destroy, {id: project.id}, {}
	  	expect(response).to redirect_to(Project)
	  end
  end  

  context "valid parameters" do
  	subject {
  		project = Project.create!(valid_attributes)
	  	project.title = "Update title"
	  	project.save
	  	patch :update, {id: project.id , project: valid_attributes}
  	}
	  it "should update project" do
	  	subject
	  	expect(assigns(:project).title).to eq(valid_attributes[:title])
	  end

	  it "should render the index template" do
	  	expect(subject).to redirect_to(Project)
	  end
  end  

end
