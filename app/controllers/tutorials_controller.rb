class TutorialsController < ApplicationController
  # GET /tutorials
  # GET /tutorials.json
  def index
    @tutorials = Tutorial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutorials }
    end
  end
  def search
    @tutorials = Tutorial.search params[:search]
  end


  # GET /tutorials/1
  # GET /tutorials/1.json
  def show
    @tutorial = Tutorial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutorial }
    end
  end

  # GET /tutorials/new
  # GET /tutorials/new.json
  def new
    if session[:user_role] == 'student'
        redirect_to('/error')
    else    
      @tutorial = Tutorial.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @tutorial }
      end
    end
  end

  # GET /tutorials/1/edit
  def edit
    if session[:user_role] == 'student'
        redirect_to('/error')
    else    
      @tutorial = Tutorial.find(params[:id])
    end
  end

  # POST /tutorials
  # POST /tutorials.json
  def create
    if session[:user_role] == 'student'
        redirect_to('/error')
    else    
      @tutorial = Tutorial.new(params[:tutorial])

      respond_to do |format|
          if @tutorial.save
            format.html { redirect_to @tutorial, notice: 'Tutorial was successfully created.' }
            format.json { render json: @tutorial, status: :created, location: @tutorial }
          else
            format.html { render action: "new" }
            format.json { render json: @tutorial.errors, status: :unprocessable_entity }
          end
        end
    end
  end

  # PUT /tutorials/1
  # PUT /tutorials/1.json
  def update
    if session[:user_role] == 'student'
        redirect_to('/error')
    else    
      @tutorial = Tutorial.find(params[:id])

      respond_to do |format|
          if @tutorial.update_attributes(params[:tutorial])
            format.html { redirect_to @tutorial, notice: 'Tutorial was successfully updated.' }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @tutorial.errors, status: :unprocessable_entity }
          end
        end
      end
  end

  # DELETE /tutorials/1
  # DELETE /tutorials/1.json
  def destroy
    if session[:user_role] == 'student'
        redirect_to('/error')
    else    
      @tutorial = Tutorial.find(params[:id])
      @tutorial.destroy

      respond_to do |format|
        format.html { redirect_to tutorials_url }
        format.json { head :no_content }
      end
    end
  end
  
  def Math
  @tut1 = Tutorial.math
  end
  def Reading
  @tut2 = Tutorial.reading
  end
  def Writing
  @tut3 = Tutorial.writing
  end
  
end
