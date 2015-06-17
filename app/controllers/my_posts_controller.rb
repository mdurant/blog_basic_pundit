class MyPostsController < ApplicationController
  before_action :set_my_post, only: [:show, :edit, :update, :destroy]

  # GET /my_posts
  # GET /my_posts.json
  def index
    @my_posts = MyPost.all
  end

  # GET /my_posts/1
  # GET /my_posts/1.json
  def show
  end

  # GET /my_posts/new
  def new
    @my_post = MyPost.new
  end

  # GET /my_posts/1/edit
  def edit
  end

  # POST /my_posts
  # POST /my_posts.json
  def create
    @my_post = MyPost.new(my_post_params)

    respond_to do |format|
      if @my_post.save
        format.html { redirect_to @my_post, notice: 'My post was successfully created.' }
        format.json { render :show, status: :created, location: @my_post }
      else
        format.html { render :new }
        format.json { render json: @my_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_posts/1
  # PATCH/PUT /my_posts/1.json
  def update
    respond_to do |format|
      if @my_post.update(my_post_params)
        format.html { redirect_to @my_post, notice: 'My post was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_post }
      else
        format.html { render :edit }
        format.json { render json: @my_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_posts/1
  # DELETE /my_posts/1.json
  def destroy
    @my_post.destroy
    respond_to do |format|
      format.html { redirect_to my_posts_url, notice: 'My post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_post
      @my_post = MyPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_post_params
      params.require(:my_post).permit(:post, :comment)
    end
end
