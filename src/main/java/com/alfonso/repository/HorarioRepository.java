
package com.alfonso.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.alfonso.model.Horario;
/** Marcamos esta clase como un Bean de tipo Repository en nuestro Root ApplicationContext.
Nota: La anotacion @Repository es opcional ya que al extender la interfaz JpaRepository Spring 
crea una instancia en nuestro Root ApplicationContext.
*/
@Repository
public interface HorarioRepository extends JpaRepository<Horario, Integer>{
	// Horarios por idPelicula (Pelicula.id = Pelicula_Id and fecha=?)
	public List<Horario> findByPelicula_IdAndFechaOrderByHora(int idPelicula, Date fecha);
	
	@Query("select h from Horario h where h.fecha = :fecha and pelicula.estatus = 'Activa' group by h.pelicula order by pelicula.id asc")
	public List<Horario> findByFecha(@Param("fecha") Date fecha);
	
	
}
