class PrincipalController < ApplicationController

  def inicio
    @sliders = Slider.order("RANDOM()")
    @pubs = Publicacion.order(indice: :asc).limit(3)
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
    @sems = Sesion.where("date_part('year', fecha_i) = ?", (params[:anio] ? params[:anio] : Sesion.maximum(:fecha_i).year.to_s)).order(fecha_i: :desc)
    @nxt = Sesion.where("date_part('year', fecha_i) = ?", (params[:anio] ? params[:anio].to_i + 1 : (Sesion.maximum(:fecha_i).year + 1).to_s)).size
    @lst = Sesion.where("date_part('year', fecha_i) = ?", (params[:anio] ? params[:anio].to_i - 1 : (Sesion.maximum(:fecha_i).year - 1).to_s)).size
    respond_to do |format|
      format.html
      format.js
    end
  end

  def seminario
    @sem = Sesion.where("regexp_replace(regexp_replace(regexp_replace(lower(unaccent(titulo)),'[^a-z0-9_]+','-','g'),'(.*)(-{1,})$','\\1'),'^(-{1,})?(.*)','\\2') = :sem", sem: params[:sem]).first
    @pubs = Publicacion.where(titulo: (JSON.parse(@sem.pubs).reject{|x| x.empty?}.size > 0 ? JSON.parse(@sem.pubs).reject{|x| x.empty?} : ",")).all
    @imgs = Imagen.where(sesion: @sem.titulo).order(indice: :asc)
    @title = @sem.titulo
    @banner = @sem.banner.url if @sem.banner.present?
    if !@sem.banner.present?
      #begin
        @cliente = TinyTds::Client.new username: ENV["AG_USR"], password: ENV["AG_PWD"], host: ENV["AG_HOST"], port: ENV["AG_PORT"], database: ENV["AG_DB"]
        @resultado = @cliente.execute("SELECT ligaImagen FROM dbo.vw_DatosAgenda WHERE tituloActividad = '#{@sem.titulo}'")
        @banner = @resultado.first['ligaImagen']
        logger.debug @resultado
      #rescue
      #  @resultado = []
      #  @cliente.close if @cliente
      #end
    end
  end

  def publicaciones
    @title = "Publicaciones"
    @publicaciones = Publicacion.order(indice: :asc).limit(6).offset(params[:offset] ? params[:offset].to_i * 6 : 0)
    @total = Publicacion.count
    @pags = (@total / 6.0).ceil
    respond_to do |format|
      format.html
      format.js
    end
  end

  def publicacion
    @pub = Publicacion.where("regexp_replace(lower(unaccent(titulo)),'[^a-z0-9_]+','-','g') = ?", params[:pub]).first
    @title = @pub.titulo.gsub(/<.*?>/,"")
  end

  def multimedia
    @title = "Multimedia"
    @limite = 6
    @videos = Video.where("tags like :tag", tag: "%SVP%").limit(@limite).offset(params[:offset] ? params[:offset].to_i * @limite : 0).order(fecha: :desc)
    @total = Video.where("tags like :tag", tag: "%SVP%").count
    #@videos = Vid.limit(@limite).offset(params[:offset] ? params[:offset].to_i * @limite : 0).order(indice: :asc)
    #@total = Vid.count
    respond_to do |format|
      format.html
      format.js
    end
  end

  def archivo
    @title = "Archivo General de la Nación/Catálogo DFS"
    @archivos = DocsConsulta.order(indice: :asc)
  end

  def mvrp
  end

  def special
  end
end
