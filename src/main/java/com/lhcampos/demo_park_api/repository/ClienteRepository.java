package com.lhcampos.demo_park_api.repository;

import com.lhcampos.demo_park_api.entity.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {
}
