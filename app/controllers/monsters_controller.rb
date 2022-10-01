class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def destroy

    @monster.destroy
    redirect_to monsters_path, :notice => "Se ha borrado el monstruo"
  end
  
end
