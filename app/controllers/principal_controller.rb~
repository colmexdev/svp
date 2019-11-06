class PrincipalController < ApplicationController

  def inicio
  end

  def acerca
    @title = "Acerca de"
  end

  def colaboradores
    @title = "Colaboradores"
    @personas = Persona.order(indice: :asc)
  end

  def seminarios
    @title = "Seminarios"
    respond_to do |format|
      format.html
      format.js
    end
  end

  def publicaciones
    @title = "Publicaciones"
  end

  def multimedia
    @title = "Multimedia"
    @videos = Video.where(lista: "Seminario sobre Violencia y Paz").limit(6).offset(params[:offset] ? params[:offset].to_i * 6 : 0).order(fecha: :desc)
    respond_to do |format|
      format.html
      format.js
    end
  end
end
