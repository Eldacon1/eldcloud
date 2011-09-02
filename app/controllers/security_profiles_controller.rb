class SecurityProfilesController < ApplicationController
  # GET /security_profiles
  # GET /security_profiles.xml
  def index
    @security_profiles = SecurityProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @security_profiles }
    end
  end

  # GET /security_profiles/1
  # GET /security_profiles/1.xml
  def show
    @security_profile = SecurityProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @security_profile }
    end
  end

  # GET /security_profiles/new
  # GET /security_profiles/new.xml
  def new
    @security_profile = SecurityProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @security_profile }
    end
  end

  # GET /security_profiles/1/edit
  def edit
    @security_profile = SecurityProfile.find(params[:id])
  end

  # POST /security_profiles
  # POST /security_profiles.xml
  def create
    @security_profile = SecurityProfile.new(params[:security_profile])

    respond_to do |format|
      if @security_profile.save
        format.html { redirect_to(@security_profile, :notice => 'Security profile was successfully created.') }
        format.xml  { render :xml => @security_profile, :status => :created, :location => @security_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @security_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /security_profiles/1
  # PUT /security_profiles/1.xml
  def update
    @security_profile = SecurityProfile.find(params[:id])

    respond_to do |format|
      if @security_profile.update_attributes(params[:security_profile])
        format.html { redirect_to(@security_profile, :notice => 'Security profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @security_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /security_profiles/1
  # DELETE /security_profiles/1.xml
  def destroy
    @security_profile = SecurityProfile.find(params[:id])
    @security_profile.destroy

    respond_to do |format|
      format.html { redirect_to(security_profiles_url) }
      format.xml  { head :ok }
    end
  end
end
