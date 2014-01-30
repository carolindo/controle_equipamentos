class ComptypesController < ApplicationController
  include SendDocHelper
  
  def imprimeComptypes
    @comptypes = Comptype.find(:all, :order => "type_description")
    send_doc(
        render_to_string(:template => 'comptypes/relatComptypes', :layout => false),
         '/comptypes/comptype', 
        'relatComptypes',
        'RelatTipos', 
        'pdf')
#    respond_to do |format|
#     format.xml  { render :xml => @comptypes }
#    end
  end
  
  def listaComptypes
    @comptypes = Comptype.find(:all).to_xml(:dasherize => false)
    respond_to do |format|
      format.xml  { render :xml => @comptypes }
    end
  end

  # GET /comptypes/1
  # GET /comptypes/1.xml
  def show
    @comptype = Comptype.find(params[:id]).to_xml(:dasherize => false)

    respond_to do |format|
      format.xml  { render :xml => @comptype }
    end
  end

  # GET /comptypes/new
  # GET /comptypes/new.xml
  def new
    @comptype = Comptype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comptype }
    end
  end

  # GET /comptypes/1/edit
  def edit
    @comptype = Comptype.find(params[:id])
  end

  def create

    @comptype = Comptype.new(:type_description => params[:comptypeDescription])

    respond_to do |format|
      if @comptype.save
        format.xml { head :ok }
      end
    end
  end

  # PUT /comptypes/1
  # PUT /comptypes/1.xml
  def update
    @comptype = Comptype.find(params[:comptype][:id])

    respond_to do |format|
      if @comptype.update_attributes(params[:comptype])
        format.xml  { head :ok }
      end
    end
  end

  # DELETE /comptypes/1
  # DELETE /comptypes/1.xml
  def destroy
    @comptype = Comptype.find(params[:id])
    begin
      @comptype.destroy
    end
    respond_to do |format|
      format.xml  { head :ok }
    end
  end
end
