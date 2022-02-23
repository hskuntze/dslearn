package com.devsuperior.dslearnbds.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devsuperior.dslearnbds.entities.Notification;
import com.devsuperior.dslearnbds.entities.User;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long>{
	//A consulta atual é simplificada e incompleta. Será contemplado o assunto no capítulo de JPQL e JPA
	Page<Notification> findByUser(User user, Pageable pageable);
}
