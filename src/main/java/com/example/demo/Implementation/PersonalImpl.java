package com.example.demo.Implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entity.Personal;
import com.example.demo.Respository.PersonalRepository;
import com.example.demo.Service.PersonalService;

@Service
public class PersonalImpl implements PersonalService{

    @Autowired
    PersonalRepository r;

    @Override
    public List<Personal> findAll() {
        return r.findAll();
    }

    @Override
    public Personal findById(Integer id) {
        return r.findById(id).orElseThrow();
    }

    @Override
    public Personal save(Personal x) {
        return r.save(x);
    }

    @Override
    public void deleteById(Integer id) {
        r.deleteById(id);
    }

    @Override
    public boolean existsById(Integer id) {
        return r.existsById(id);
    }


}
