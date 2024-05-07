package com.example.DressShop.Repositories;

import com.example.DressShop.Models.Products;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Products, Long> {
}
