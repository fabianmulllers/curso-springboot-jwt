package com.fmuller.springboot.app.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fmuller.springboot.app.models.entity.Cliente;
import com.fmuller.springboot.app.models.service.IClienteService;
import com.fmuller.springboot.app.view.xml.ClienteList;

@RestController
@RequestMapping("/api/clientes")
public class ClienteRestController {

	@Autowired
	private IClienteService clienteService;
	
	@GetMapping({"/listar","/"})
	@ResponseBody
	@Secured({"ROLE_ADMIN","ROLE_USER"})
	public ClienteList listar() {
		return new ClienteList(clienteService.findAll());
	}
	
}
