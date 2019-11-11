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
    @sems = Sesion.where("date_part('year', fecha_i) = ?", (params[:anio] ? params[:anio] : Sesion.maximum(:fecha_i).year.to_s))
    respond_to do |format|
      format.html
      format.js
    end
  end

  def seminario
    @sem = Sesion.where("regexp_replace(regexp_replace(lower(unaccent(titulo)),'[^a-z0-9_]+','-','g'),'^-?(.*)-?$','\1') = ?", params[:sem]).first
    @pubs = Publicacion.where(titulo: (JSON.parse(@sem.pubs).reject{|x| x.empty?}.size > 0 ? JSON.parse(@sem.pubs).reject{|x| x.empty?} : ",")).all
    @title = @sem.titulo
  end

  def publicaciones
    @title = "Publicaciones"
    @publicaciones = Publicacion.order(indice: :asc)
  end

  def publicacion
    @pub = Publicacion.where("regexp_replace(lower(unaccent(titulo)),'[^a-z0-9_]+','-','g') = ?", params[:pub]).first
    @title = @pub.titulo.gsub(/<.*?>/,"")
  end

  def multimedia
    @title = "Multimedia"
    @limite = 6
    @videos = Video.where(lista: "Seminario sobre Violencia y Paz").limit(@limite).offset(params[:offset] ? params[:offset].to_i * @limite : 0).order(fecha: :desc)
    @total = Video.where(lista: "Seminario sobre Violencia y Paz").size
    respond_to do |format|
      format.html
      format.js
    end
  end
end
