class LocationsController < ApplicationController
  include SendDocHelper
  
  def imprimeLocations
    @locations = Location.find(:all, :order => "location_description")
    send_doc(
        render_to_string(:template => 'locations/relatLocations', :layout => false),
         '/locations/location', 
        'relatLocations',
        'RelatLocais', 
        'pdf')
#    respond_to do |format|
#      format.xml  { render :xml => @locations }
#    end
  end

  def listaLocations
    @locations = Location.find(:all).to_xml(:dasherize => false)
    respond_to do |format|
      format.xml  { render :xml => @locations }
    end
  end

  # GET /locations/1
  # GET /locations/1.xml
  def show
    @location = Location.find(params[:id]).to_xml(:dasherize => false)

    respond_to do |format|
      format.xml  { render :xml => @location }
    end
  end

  # GET /locations/new
  # GET /locations/new.xml
  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @location }
    end
  end

  # GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(:location_description => params[:locationDescription])
    respond_to do |format|
      if @location.save
         format.xml { head :ok }
      end
    end
  end

  # PUT /locations/1
  # PUT /locations/1.xml
  def update
    @location = Location.find(params[:location][:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.xml  { head :ok }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.xml
  def destroy
    @location = Location.find(params[:id])
    begin
      @location.destroy
    end

    respond_to do |format|
      format.xml  { head :ok }
    end  
  end
  
end

