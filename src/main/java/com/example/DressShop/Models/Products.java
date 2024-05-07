package com.example.DressShop.Models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name="Products")
public class Products {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "description")
    private String description;
    @Column(name = "price")
    private Float price;
    @Column(name = "iconPath")
    private String iconPath;
}
