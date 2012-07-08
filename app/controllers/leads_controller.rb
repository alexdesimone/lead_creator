class LeadsController < ApplicationController
  include Databasedotcom::Rails::Controller
  
  def new
    @lead = Lead.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead }
    end
  end
  
  def create
    @lead = Lead.new(params[:lead])
    @lead['OwnerId'] = '005E0000000epp7IAA' 
    @lead['IsConverted'] = false
    @lead['IsUnreadByOwner'] = true
    respond_to do |format|
      if @lead.save
        format.html { redirect_to root_path }
        format.json { render json: @lead, status: :created, location: @lead }
        flash[:success] = "Salesforce lead was successfully created!"
      else
        format.html { render action: "new" }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end
    
end
