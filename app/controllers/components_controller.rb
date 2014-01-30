class ComponentsController < ApplicationController
  include SendDocHelper
  
  def imprimeComponents
    @components = Component.find(:all, :order => "description")

    send_doc(
        render_to_string(:template => 'components/relatComponents', :layout => false),
         '/components/component', 
        'relatComponents',
        'RelatEquipamentos', 
        'pdf')
#    respond_to do |format|
#      format.xml  { render :xml => @components }
#   end
  end
  
  def listaComponents
    
    @components = Component.find(:all).to_xml(:include => [:location, :comptype], :dasherize => false)

    respond_to do |format|
      format.xml  { render :xml => @components }
    end
  end

  # GET /components/1
  # GET /components/1.xml
  def show
    @component = Component.find(params[:id]).to_xml(:include => [:comptype, :location], :dasherize => false)
    respond_to do |format|
      format.xml  { render :xml => @component}
    end
  end

  # GET /components/new
  # GET /components/new.xml
  def new
    @component = Component.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @component}
    end
  end

  # GET /components/1/edit
  def edit
    @component = Component.find(params[:id])
  end

  # POST /components
  # POST /components.xml
  def create

    @component = Component.new(params[:component])

    respond_to do |format|
      if @component.save
        format.xml  { head :ok }
      end
    end
  end

  # PUT /components/1
  # PUT /components/1.xml
  def update
    @component = Component.find(params[:component][:id])

    respond_to do |format|
      if @component.update_attributes(params[:component])
         format.xml  { head :ok }
      end
    end
  end

  # DELETE /components/1
  # DELETE /components/1.xml
  def destroy
    @component = Component.find(params[:id])
    begin
      @component.destroy
    end
    respond_to do |format|
      format.xml  { head :ok }
    end
  end
end
