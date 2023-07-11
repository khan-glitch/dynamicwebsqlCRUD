package com.csm.entity;

public class animals {
    private int animals_id;
    private String animals_gender;
    private String animals_name;
    private int arrived_year;
    private int diets_id;
    private int keepers_id;
    private int species_id;
    private int enclosures_id;

    public animals(int animals_id, String animals_gender, String animals_name, int arrived_year, int diets_id,
            int keepers_id, int species_id, int enclosures_id) {
        super();
        this.animals_id = animals_id;
        this.animals_gender = animals_gender;
        this.animals_name = animals_name;
        this.arrived_year = arrived_year;
        this.diets_id = diets_id;
        this.keepers_id = keepers_id;
        this.species_id = species_id;
        this.enclosures_id = enclosures_id;
    }

    public animals(String animals_name, int arrived_year, String animals_gender, int diets_id, int keepers_id,
            int species_id, int enclosures_id) {
        super();
        this.animals_name = animals_name;
        this.arrived_year = arrived_year;
        this.animals_gender = animals_gender;
        this.diets_id = diets_id;
        this.keepers_id = keepers_id;
        this.species_id = species_id;
        this.enclosures_id = enclosures_id;
    }

    public int getAnimals_id() {
        return animals_id;
    }

    public void setAnimals_id(int animals_id) {
        this.animals_id = animals_id;
    }

    public String getAnimals_gender() {
        return animals_gender;
    }

    public void setAnimals_gender(String animals_gender) {
        this.animals_gender = animals_gender;
    }

    public String getAnimals_name() {
        return animals_name;
    }

    public void setAnimals_name(String animals_name) {
        this.animals_name = animals_name;
    }

    public int getArrived_year() {
        return arrived_year;
    }

    public void setArrived_year(int arrived_year) {
        this.arrived_year = arrived_year;
    }

    public int getDiets_id() {
        return diets_id;
    }

    public void setDiets_id(int diets_id) {
        this.diets_id = diets_id;
    }

    public int getKeepers_id() {
        return keepers_id;
    }

    public void setKeepers_id(int keepers_id) {
        this.keepers_id = keepers_id;
    }

    public int getSpecies_id() {
        return species_id;
    }

    public void setSpecies_id(int species_id) {
        this.species_id = species_id;
    }

    public int getEnclosures_id() {
        return enclosures_id;
    }

    public void setEnclosures_id(int enclosures_id) {
        this.enclosures_id = enclosures_id;
    }
}
