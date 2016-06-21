class PagesController < ApplicationController
  
  def batman
  end

  def superman
  end

  def batman_vs_superman
  	@heroe = params[:heroe]
	@email = params[:email]
  end

  def guardar_voto
 	Voto.create(heroe: params[:heroe], email: params[:email])
 	redirect_to pages_batman_vs_superman_path, notice: "El usuario fue guardado"
  end
end
