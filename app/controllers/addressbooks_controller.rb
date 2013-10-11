class AddressbooksController < ApplicationController
  before_action :set_addressbook, only: [:show, :edit, :update, :destroy]

  # GET /addressbooks
  # GET /addressbooks.json
  def index
    @addressbooks = Addressbook.all
  end

  # GET /addressbooks/1
  # GET /addressbooks/1.json
  def show
  end

  # GET /addressbooks/new
  def new
    @addressbook = Addressbook.new
  end

  # GET /addressbooks/1/edit
  def edit
  end

  # POST /addressbooks
  # POST /addressbooks.json
  def create
    @addressbook = Addressbook.new(addressbook_params)

    respond_to do |format|
      if @addressbook.save
        format.html { redirect_to @addressbook, notice: 'Addressbook was successfully created.' }
        format.json { render action: 'show', status: :created, location: @addressbook }
      else
        format.html { render action: 'new' }
        format.json { render json: @addressbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addressbooks/1
  # PATCH/PUT /addressbooks/1.json
  def update
    respond_to do |format|
      if @addressbook.update(addressbook_params)
        format.html { redirect_to @addressbook, notice: 'Addressbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @addressbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addressbooks/1
  # DELETE /addressbooks/1.json
  def destroy
    @addressbook.destroy
    respond_to do |format|
      format.html { redirect_to addressbooks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addressbook
      @addressbook = Addressbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addressbook_params
      params.require(:addressbook).permit(:zip, :address)
    end
end
