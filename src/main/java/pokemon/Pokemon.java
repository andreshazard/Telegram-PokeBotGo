package pokemon;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

/**
 * class that holds the pokemon info given back to the user
 */
@Entity
@Table(name = "pokemon")
public class Pokemon {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int pokemon_id;

    @NotNull
    private int pokemon_number;

    @NotNull
    private String pokemon_name;

    @NotNull
    private String type;

    @Null
    private int buddy_distance;

    @NotNull
    private String best_offensive_quick_move_id;

    @NotNull
    private String best_offensive_charge_move_id;

    @NotNull
    private String best_defensive_quick_move_id;

    @NotNull
    private String best_defensive_charge_move_id;

    @NotNull
    private int base_attack;

    @NotNull
    private int base_defense;

    @NotNull
    private int stamina;

    @NotNull
    private int max_cp;



    //Temporary constructor, this should have a builder pattern
    public Pokemon(int pokemon_number, String pokemon_name, String type, int buddy_distance,
                   String best_offensive_quick_move_id, String best_offensive_charge_move_id,
                   String best_defensive_quick_move_id, String best_defensive_charge_move_id,
                   int base_attack, int base_defense, int stamina, int max_cp) {
        this.pokemon_number = pokemon_number;
        this.pokemon_name = pokemon_name;
        this.type = type;
        this.buddy_distance = buddy_distance;
        this.best_offensive_quick_move_id = best_offensive_quick_move_id;
        this.best_offensive_charge_move_id = best_offensive_charge_move_id;
        this.best_defensive_quick_move_id = best_defensive_quick_move_id;
        this.best_defensive_charge_move_id = best_defensive_charge_move_id;
        this.base_attack = base_attack;
        this.base_defense = base_defense;
        this.stamina = stamina;
        this.max_cp = max_cp;
    }

    public int getPokemon_number() {
        return pokemon_number;
    }

    public String getPokemon_name() {
        return pokemon_name;
    }

    public String getType() {
        return type;
    }

    public int getBuddy_distance() {
        return buddy_distance;
    }

    public String getBest_offensive_quick_move_id() {
        return best_offensive_quick_move_id;
    }

    public String getBest_offensive_charge_move_id() {
        return best_offensive_charge_move_id;
    }

    public String getBest_defensive_quick_move_id() {
        return best_defensive_quick_move_id;
    }

    public String getBest_defensive_charge_move_id() {
        return best_defensive_charge_move_id;
    }

    public int getBase_attack() {
        return base_attack;
    }

    public int getBase_defense() {
        return base_defense;
    }

    public int getStamina() {
        return stamina;
    }

    public int getMax_cp() {
        return max_cp;
    }
}
