class MenusController < ApplicationController
  layout "layout_padrao"
  def index
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end

end
