class AutoCatsController < ApplicationController
  # GET /auto_cats
  # GET /auto_cats.json
  def index
    @auto_cats = AutoCat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @auto_cats }
    end
  end

  # GET /auto_cats/1
  # GET /auto_cats/1.json
  def show
    @auto_cat = AutoCat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auto_cat }
    end
  end

  # GET /auto_cats/new
  # GET /auto_cats/new.json
  def new
    @auto_cat = AutoCat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auto_cat }
    end
  end

  # GET /auto_cats/1/edit
  def edit
    @auto_cat = AutoCat.find(params[:id])
  end

  # POST /auto_cats
  # POST /auto_cats.json
  def create
    @auto_cat = AutoCat.new(params[:auto_cat])

    respond_to do |format|
      if @auto_cat.save
        format.html { redirect_to @auto_cat, notice: 'Auto cat was successfully created.' }
        format.json { render json: @auto_cat, status: :created, location: @auto_cat }
      else
        format.html { render action: "new" }
        format.json { render json: @auto_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /auto_cats/1
  # PUT /auto_cats/1.json
  def update
    @auto_cat = AutoCat.find(params[:id])

    respond_to do |format|
      if @auto_cat.update_attributes(params[:auto_cat])
        format.html { redirect_to @auto_cat, notice: 'Auto cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @auto_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_cats/1
  # DELETE /auto_cats/1.json
  def destroy
    @auto_cat = AutoCat.find(params[:id])
    @auto_cat.destroy

    respond_to do |format|
      format.html { redirect_to auto_cats_url }
      format.json { head :no_content }
    end
  end
end
