# frozen_string_literal: true

class KruMembersController < ApplicationController
  before_action :authenticate_user!, only: %i[new edit update destroy]
  before_action :set_kru_member, only: %i[show edit update destroy]


  # GET /kru_members
  # GET /kru_members.json
  def index
    @kru_members = KruMember.all
  end

  # GET /kru_members/1
  # GET /kru_members/1.json
  def show; end

  # GET /kru_members/new
  def new
    @kru_member = KruMember.new
  end

  # GET /kru_members/1/edit
  def edit; end

  # POST /kru_members
  # POST /kru_members.json
  def create
    @kru_member = KruMember.new(kru_member_params)
    @kru_member.updater = current_user
    respond_to do |format|
      if @kru_member.save
        format.html { redirect_to @kru_member, notice: 'Kru member was successfully created.' }
        format.json { render :show, status: :created, location: @kru_member }
      else
        puts @kru_member.to_yaml
        format.html { render :new }
        format.json { render json: @kru_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kru_members/1
  # PATCH/PUT /kru_members/1.json
  def update
    respond_to do |format|
      if @kru_member.update(kru_member_params)
        format.html { redirect_to @kru_member, notice: 'Kru member was successfully updated.' }
        format.json { render :show, status: :ok, location: @kru_member }
      else
        format.html { render :edit }
        format.json { render json: @kru_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kru_members/1
  # DELETE /kru_members/1.json
  def destroy
    @kru_member.destroy
    respond_to do |format|
      format.html { redirect_to kru_members_url, notice: 'Kru member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_kru_member
    @kru_member = KruMember.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def kru_member_params
    params.require(:kru_member).permit(:name, :image, :bio)
  end

  private def set_layout
    super
    @layout = 'album'
  end
end
