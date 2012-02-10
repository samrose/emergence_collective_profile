class GeneralProfilesController < ApplicationController
  before_filter :authenticate_user!
  # GET /general_profiles
  # GET /general_profiles.json
  def can_edit?
    @general_profile = GeneralProfile.find(params[:id])
    current_user.id == @general_profile.user_id
  end

  def index
    @general_profiles = GeneralProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @general_profiles }
    end
  end

  # GET /general_profiles/1
  # GET /general_profiles/1.json
  def show
    @general_profile = GeneralProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @general_profile }
    end
  end

  # GET /general_profiles/new
  # GET /general_profiles/new.json
  def new
    @general_profile = GeneralProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @general_profile }
    end
  end

  # GET /general_profiles/1/edit
  def edit
    @general_profile = GeneralProfile.find(params[:id])
    render_forbidden and return unless can_edit?
  end

  # POST /general_profiles
  # POST /general_profiles.json
  def create
    @general_profile = GeneralProfile.new(params[:general_profile])

    respond_to do |format|
      if @general_profile.save
        format.html { redirect_to @general_profile, notice: 'General profile was successfully created.' }
        format.json { render json: @general_profile, status: :created, location: @general_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @general_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /general_profiles/1
  # PUT /general_profiles/1.json
  def update
    @general_profile = GeneralProfile.find(params[:id])

    respond_to do |format|
      if @general_profile.update_attributes(params[:general_profile])
        format.html { redirect_to @general_profile, notice: 'General profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @general_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_profiles/1
  # DELETE /general_profiles/1.json
  def destroy
    @general_profile = GeneralProfile.find(params[:id])
    @general_profile.destroy

    respond_to do |format|
      format.html { redirect_to general_profiles_url }
      format.json { head :no_content }
    end
  end
  def render_forbidden
    respond_to do |format|
      format.html { render :action => "errors/forbidden", :status => 403 }
    end
    true
  end
end
