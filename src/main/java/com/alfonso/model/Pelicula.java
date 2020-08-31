package com.alfonso.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity //anotacion que identifica la clase como entidad
@Table(name="peliculas") //nombre de la tabla en bd
public class Pelicula {
	@Id //Anotacion que indica que el atributo es la clave primaria
	@GeneratedValue(strategy=GenerationType.IDENTITY)//Auto_increment MYSQL
	private int id;
	private String titulo;
	private int duracion;
	private String clasificacion;
	private String genero;
	private String imagen = "cinema.png";  //Imagen default
	private Date fechaEstreno;
	private String estatus  = "Activa";
	//@Transient //Se ignora el atributo durante la persistencia
	//private Detalle detalle;
	@OneToOne // relacion uno a uno 
	@JoinColumn(name="idDetalle") // une una columna de la tabla detalle a la tabla pelicula 
	private Detalle detalle;
	
	//relacion uno a muchos y el eager descarga
	//los atributos del obj. siempre a diferencia del lazy
	@OneToMany(mappedBy ="pelicula", fetch=FetchType.EAGER) 
	private List<Horario> horario;
	
	
	public Pelicula() {
		super();
	}
	
	
	public List<Horario> getHorario() {
		return horario;
	}
	public void setHorario(List<Horario> horario) {
		this.horario = horario;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public int getDuracion() {
		return duracion;
	}
	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}
	public String getClasificacion() {
		return clasificacion;
	}
	public void setClasificacion(String clasificacion) {
		this.clasificacion = clasificacion;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public Date getFechaEstreno() {
		return fechaEstreno;
	}
	public void setFechaEstreno(Date fechaEstreno) {
		this.fechaEstreno = fechaEstreno;
	}
	public String getEstatus() {
		return estatus;
	}
	
	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}
	
	public Detalle getDetalle() {
		return detalle;
	}
	
	public void setDetalle(Detalle detalle) {
		this.detalle = detalle;
	}
	
	@Override
	public String toString() {
		return "Pelicula [id=" + id + ", titulo=" + titulo + ", duracion=" + duracion + ", clasificacion="
				+ clasificacion + ", genero=" + genero + ", imagen=" + imagen + ", fechaEstreno=" + fechaEstreno
				+ ", estatus=" + estatus + ", detalle=" + detalle + "]";
	}
	
	
}
