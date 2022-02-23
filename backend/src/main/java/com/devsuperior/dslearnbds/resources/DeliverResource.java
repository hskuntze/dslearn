package com.devsuperior.dslearnbds.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devsuperior.dslearnbds.dto.DeliverRevisionDTO;
import com.devsuperior.dslearnbds.services.DeliverService;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/deliveries")
public class DeliverResource {

	@Autowired
	private DeliverService service;
	
	@PreAuthorize("hasAnyRole('ADMIN','INSTRUCTOR')")
	@PutMapping(value = "/{deliverId}")
	public ResponseEntity<Void> update(@PathVariable Long deliverId, @RequestBody DeliverRevisionDTO dto){
		service.saveRevision(deliverId, dto);
		return ResponseEntity.noContent().build();
	} 
}
