package com.example.demo.Service;

import java.util.List;

import com.example.demo.Entity.Personal;


public interface PersonalService {
    List<Personal> findAll();

    Personal findById(Integer id);

    Personal save(Personal x);

    void deleteById(Integer id);

    boolean existsById(Integer id);
}
