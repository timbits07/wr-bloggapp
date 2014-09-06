require 'rails_helper'

RSpec.describe PostsController, :type => :controller do

  before :each do
    @valid_attributes = {
      title: 'My first post',
      body: 'Tote bag dreamcatcher twee chillwave.'
    }
    @post1 = Post.create(@valid_attributes)
    @post2 = Post.create(@valid_attributes)
    @post = Post.new(@valid_attributes)
  end

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template('index')
    end

    it "loads all of the posts into @posts" do
      get :index
      expect(assigns(:posts)).to match_array([@post1, @post2])
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template('new')
    end

  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, {id: @post1.id}
      expect(response).to be_success
    end

    it "renders the edit template" do
      get :edit, {id: @post1.id}
      expect(response).to render_template('edit')
    end

    it "loads the post in @post into the edit form" do
      get :edit, {id: @post1.id}
      expect(assigns(:post)).to eq(@post1)
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, {id: @post1.id}
      expect(response).to be_success
    end

    it "renders the show template" do
      get :show, {id: @post1.id}
      expect(response).to render_template('show')
    end

    it "loads the post in @post into the show page" do
      get :show, {id: @post1.id}
      expect(assigns(:post)).to eq(@post1)
    end
  end

  # describe "POST create" do
  #   it "returns http success" do
  #     posts = Post.count
  #     post :create, title: 'my first post', body: 'blah, blah, blah'
  #     expect(Post.count).to eq(posts + 1)
  #   end
  # end

end
