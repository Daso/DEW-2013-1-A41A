class MothersController < ApplicationController
  # GET /mothers
  # GET /mothers.json
  def index
    @mothers = Mother.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mothers }
    end
  end

  # GET /mothers/1
  # GET /mothers/1.json
  def show
    @mother = Mother.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mother }
    end
  end

  # GET /mothers/new
  # GET /mothers/new.json
  def new
    @mother = Mother.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mother }
    end
  end

  # GET /mothers/1/edit
  def edit
    @mother = Mother.find(params[:id])
  end

  # POST /mothers
  # POST /mothers.json
  def create
    @mother = Mother.new(params[:mother])

    respond_to do |format|
      if @mother.save
        format.html { redirect_to @mother, notice: 'Mother was successfully created.' }
        format.json { render json: @mother, status: :created, location: @mother }
      else
        format.html { render action: "new" }
        format.json { render json: @mother.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mothers/1
  # PUT /mothers/1.json
  def update
    @mother = Mother.find(params[:id])

    respond_to do |format|
      if @mother.update_attributes(params[:mother])
        format.html { redirect_to @mother, notice: 'Mother was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mother.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mothers/1
  # DELETE /mothers/1.json
  def destroy
    @mother = Mother.find(params[:id])
    @mother.destroy

    respond_to do |format|
      format.html { redirect_to mothers_url }
      format.json { head :no_content }
    end
  end
end
