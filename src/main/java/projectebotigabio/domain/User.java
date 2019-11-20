/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectebotigabio.domain;

/**
 *
 * @author jonat
 */

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "usuaris")
public class User {
    
    @Id
    @Column(name = "id")
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @Column(name = "username")
    @NotNull
    private String username;
    
    @Column(name = "password")
    @NotNull
    private String password;
    
    @Column(name = "email")
    @NotNull
    private String email;
    
    @Column(name = "enabled")
    @NotNull
    private boolean enabled;
    
    @Column(name = "roles")
    @NotNull
    private String roles;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "targeta")
    private String targeta;
    
    @Column(name = "adress")
    private String adress;
    
    @Column(name = "age")
    private int age;
    
    @Column(name = "authorities")
    private String authorities;

    public User(String username, String password, String name, String targeta, String adress, int age, String email) {
        this.username = username;
        this.password = password;
        this.enabled = true;
        this.roles = "ROLE_USER";
        this.name = name;
        this.targeta = targeta;
        this.adress = adress;
        this.age = age;
        this.email = email;
    }
    public User(){
        
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTargeta() {
        return targeta;
    }

    public void setTargeta(String targeta) {
        this.targeta = targeta;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAuthorities() {
        return authorities;
    }

    public void setAuthorities(String authorities) {
        this.authorities = authorities;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}