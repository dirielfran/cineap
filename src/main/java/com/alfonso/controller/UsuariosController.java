package com.alfonso.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alfonso.interfaces.IPerfilesService;
import com.alfonso.interfaces.IUsuariosService;
import com.alfonso.model.Perfil;
import com.alfonso.model.Usuarios;


@Controller
@RequestMapping("/usuarios")
public class UsuariosController {
	
	@Autowired
	private IUsuariosService servicesUsuario;
	
	
	@Autowired
	private IPerfilesService servicesPerfil;
	
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@RequestMapping(value="/update/{id}", method = RequestMethod.GET)
	public String updateUsu( @PathVariable("id") int idUsuario, Model modelo) {
		System.out.println("id de usuario : "+idUsuario);
		Usuarios usuario = servicesUsuario.getUsuario(idUsuario);
		modelo.addAttribute("usuario", usuario);
		return "usuarios/formUsuario";
	}
	
	@RequestMapping(value = "/delete/{id}")
	public String deleteUsu(@PathVariable("id") Integer idUsuario, RedirectAttributes redirect) {
		Usuarios usuario = servicesUsuario.getUsuario(idUsuario);
		servicesUsuario.eliminarUsu(idUsuario);
		redirect.addFlashAttribute("mensaje", "El usuario ha sido eliminado de manera exitosa.");
		return "redirect:/usuarios/indexPagina";
	}
	
	@GetMapping(value="/create")
	public String crearUsuario(@ModelAttribute("usuario") Usuarios usuario) {
		return "usuarios/formUsuario";
	}
	
	@PostMapping(value="/save")
	public String guardar(@Valid @ModelAttribute("usuario") Usuarios usuario, BindingResult result,
	@RequestParam("perfil") String perfil, @RequestParam("pwd") String password,RedirectAttributes redirect ,Model modelo) {
	
		// se recorre la lista de errores generada por el BindingResult en caso de
		// fallas con el DataBinding
		if(result.hasErrors()) {
			return "usuarios/formUsuario";
		}

		if (password.isEmpty()) {
			if (usuario.getId() != null) {
				Usuarios usuarioBD= servicesUsuario.buscarId(usuario.getId());
				usuario.setPwd(usuarioBD.getPwd());
			}else {
				modelo.addAttribute("msj", "Debe ingresar una contraseña");
				return "usuarios/formUsuario";
			}
		}else {
			// se encripta el password
			String passEncryp = encoder.encode(password);
			// se setea el password encriptado
			usuario.setPwd(passEncryp);
		}
//		usuario.setActivo(1);
		// se crea un perfil nuevo y se le setea la cuenta y el perfil
		Perfil perfil1 = new Perfil();
		// perfilTmp.setCuenta(usuario.getCuenta());
		perfil1.setId(Integer.valueOf(perfil));
		// se guarda en la base de datos
		// servicesPerfil.guardar(perfil1);
		usuario.agregar(perfil1);
	
		// se guarda el usuario en la base de datos
		servicesUsuario.guardar(usuario);
		redirect.addFlashAttribute("mensaje", "Usuario ingresado con exito.");
		System.out.println(usuario);
		System.out.println(perfil);

		return "redirect:/usuarios/indexPagina";
	}
	
//	@GetMapping(value="/index")
//	public String index(Model modelo) {
//		List<Usuarios> usuarios = servicesUsuario.buscarUsuarios();
//		modelo.addAttribute("listaUsuarios", usuarios);
//		return "usuarios/listUsuarios";
//	}
	
	@GetMapping(value="/indexPagina")
	public String indicePaginado(Model modelo, Pageable pagina) {
		Page<Usuarios> usuarios = servicesUsuario.getUsuarios(pagina);
		modelo.addAttribute("usuarios", usuarios);
		return "usuarios/listUsuarios";
	}
	
	@GetMapping(value="/demo-Bcryp")
	public String pruebaEncripta() {
		String password ="mari123";
		String encriptado = encoder.encode(password);
		System.out.println("Password encriptado: "+encriptado);
		return "usuarios/demo";
	} 
	
	
	
	
}
