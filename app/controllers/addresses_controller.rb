class AddressesController < ApplicationController
  # GET /tests
  # GET /tests.json
  def index
    @addresses = Address.all
    render :partial => "addresses/list"
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
    @address = Address.find(params[:id])
  end

  # GET /tests/new
  # GET /tests/new.json
  def new
    @address = Address.new
    render :partial => "addresses/new"
  end

  # GET /tests/1/edit
  def edit
    @address = Address.find(params[:id])
  end

  # POST /tests
  # POST /tests.json
  def create
    @address = Address.new(params[:address])
    current_user.address = @address
    respond_to do |format|
      if @address.save
        format.html { render :partial => 'addresses/show', notice: 'Address was successfully created.' }
      else
        format.html { render :partial => 'addresses/new' }
      end
    end
  end

  # PUT /tests/1
  # PUT /tests/1.json
  def update
    @address = Address.find(params[:id])

    respond_to do |format|
      if @address.update_attributes(params[:test])
        format.html { render :partial => 'addresses/show', notice: 'Address was successfully updated.' }
      else
        format.html { render :partial => 'addresses/edit' }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @address = Address.find(params[:id])
    @address.destroy

    respond_to do |format|
      format.html { render :partial => 'addresses/list' }
    end
  end
end
