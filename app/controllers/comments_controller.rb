class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  #def index
   # @comments = Comment.all

    #respond_to do |format|
     # format.html # index.html.erb
      #format.json { render json: @comments }
    #end
  #end

  # GET /comments/1/edit
  #def edit
   # @comment = Comment.find(params[:id])
 # end

  # POST /comments
  # POST /comments.json
  def create
    @tutorial = Tutorial.find(params[:tutorial_id])
    @comment = @tutorial.comments.create(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @tutorial }
        format.json { render json: @comment, status: :created, location: @comment }
        format.js #responding to javascript / create.js.erb will be called
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
 # def update
  #  @comment = Comment.find(params[:id])

   # respond_to do |format|
    #  if @comment.update_attributes(params[:comment])
     #   format.html { redirect_to @comment }
      #  format.json { head :no_content }
     # else
      #  format.html { render action: "edit" }
       # format.json { render json: @comment.errors, status: :unprocessable_entity }
      #end
   # end
  #end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to tutorial_path(@comment.tutorial_id) }
      format.json { head :no_content }
    end
  end
end
