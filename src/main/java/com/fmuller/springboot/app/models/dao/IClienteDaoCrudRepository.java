package com.fmuller.springboot.app.models.dao;

import org.springframework.data.repository.CrudRepository;

import com.fmuller.springboot.app.models.entity.Cliente;

public interface IClienteDaoCrudRepository extends CrudRepository<Cliente, Long>{
	
	

}
