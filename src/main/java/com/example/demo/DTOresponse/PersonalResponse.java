package com.example.demo.DTOresponse;

import com.example.demo.Entity.Personal;

public class PersonalResponse {
    private Personal personal;
    private rolResponse rol;

    public PersonalResponse() {
    }

    public Personal getPersonal() {
        return personal;
    }

    public void setPersonal(Personal personal) {
        this.personal = personal;
    }

    public rolResponse getRol() {
        return rol;
    }

    public void setRol(rolResponse rol) {
        this.rol = rol;
    }
    
}
