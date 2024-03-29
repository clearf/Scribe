class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    # @comments = Comment.all
    @comments = Comment.find_with_reputation(:votes, :all, {order: "votes desc"})
    # @comments = Comment.page(params[:votes]).per(20).most_voted

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end


  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @comment }
    # end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])
    @post = Post.find(params[:post_id])
    @comment.post = @post
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def vote
    value = params[:type]  == "up" ? 1 : -1
    @comment = Comment.find(params[:id])
    @comment.increase_evaluation(:votes, value, current_user)
    puts @comment.reputations
    redirect_to :back, notice: "you voted!"
  end

  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    # respond_to do |format|
    #   format.html { redirect_to comments_url }
    #   format.json { head :no_content }
    # end
  end
end
