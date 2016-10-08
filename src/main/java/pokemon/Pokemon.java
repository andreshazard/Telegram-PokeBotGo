package pokemon;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

/**
 * Created by andreshazard on 10/7/16.
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


    //Temporary constructor, this should have a builder pattern
    public Pokemon(int pokemon_number, String pokemon_name, String type, int buddy_distance,
                   String best_offensive_quick_move_id, String best_offensive_charge_move_id,
                   String best_defensive_quick_move_id, String best_defensive_charge_move_id) {
        this.pokemon_number = pokemon_number;
        this.pokemon_name = pokemon_name;
        this.type = type;
        this.buddy_distance = buddy_distance;
        this.best_offensive_quick_move_id = best_offensive_quick_move_id;
        this.best_offensive_charge_move_id = best_offensive_charge_move_id;
        this.best_defensive_quick_move_id = best_defensive_quick_move_id;
        this.best_defensive_charge_move_id = best_defensive_charge_move_id;
    }

    public int getPokemon_id() {
        return pokemon_id;
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
}
