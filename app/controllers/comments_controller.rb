class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
    render "comments/index"
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])
    render "comments/show"
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new
    render "comments/show"
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new
    @comment.author = User.find params[:author][:id]
    @comment.qualification = params[:author][:qualification]
    @comment.content = params[:content]
    @comment.parent = params[:parent]

    if @comment.save
      render "comments/show", status: :created, location: @comment
    else
      render "comments/show", status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(params[:comment])
      head :no_content
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    head :no_content
  end
end
