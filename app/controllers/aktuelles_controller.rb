class AktuellesController < ApplicationController


  def index
    @aktuelles = Aktuelle.all
  end

  def show
    @aktuelle = Aktuelle.find(params[:id])
  end

  def new
    @aktuelle = Aktuelle.new
  end

  def create
    @aktuelle = Aktuelle.new(params[:aktuelle])
    if @aktuelle.save
      redirect_to @aktuelle, :notice => "Successfully created aktuelle."
    else
      render :action => 'new'
    end
  end

  def edit
    @aktuelle = Aktuelle.find(params[:id])
  end

  def update
    @aktuelle = Aktuelle.find(params[:id])
    if @aktuelle.update_attributes(params[:aktuelle])
      redirect_to @aktuelle, :notice  => "Successfully updated aktuelle."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @aktuelle = Aktuelle.find(params[:id])
    @aktuelle.destroy
    redirect_to aktuelles_url, :notice => "Successfully destroyed aktuelle."
  end
end
