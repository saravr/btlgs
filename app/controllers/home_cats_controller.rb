class HomeCatsController < ApplicationController
  # GET /home_cats
  # GET /home_cats.json
  def index
    @home_cats = HomeCat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_cats }
    end
  end

  # GET /home_cats/1
  # GET /home_cats/1.json
  def show
    @home_cat = HomeCat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_cat }
    end
  end

  # GET /home_cats/new
  # GET /home_cats/new.json
  def new
    @home_cat = HomeCat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_cat }
    end
  end

  # GET /home_cats/1/edit
  def edit
    @home_cat = HomeCat.find(params[:id])
  end

  # POST /home_cats
  # POST /home_cats.json
  def create
    @home_cat = HomeCat.new(params[:home_cat])

    respond_to do |format|
      if @home_cat.save
        format.html { redirect_to @home_cat, notice: 'Home cat was successfully created.' }
        format.json { render json: @home_cat, status: :created, location: @home_cat }
      else
        format.html { render action: "new" }
        format.json { render json: @home_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home_cats/1
  # PUT /home_cats/1.json
  def update
    @home_cat = HomeCat.find(params[:id])

    respond_to do |format|
      if @home_cat.update_attributes(params[:home_cat])
        format.html { redirect_to @home_cat, notice: 'Home cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_cats/1
  # DELETE /home_cats/1.json
  def destroy
    @home_cat = HomeCat.find(params[:id])
    @home_cat.destroy

    respond_to do |format|
      format.html { redirect_to home_cats_url }
      format.json { head :no_content }
    end
  end
end
