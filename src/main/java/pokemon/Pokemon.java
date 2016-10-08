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
    private int type_id;

    @Null
    private int buddy_distance;

    @NotNull
    private int best_offensive_quick_move_id;

    @NotNull
    private int best_offensive_charge_move_id;

    @NotNull
    private int best_defensive_quick_move_id;

    @NotNull
    private int best_defensive_charge_move_id;


    //Temporary constructor, this should have a builder pattern
    public Pokemon(int pokemon_number, String pokemon_name, int type_id, int buddy_distance, int best_offensive_quick_move_id,
                   int best_offensive_charge_move_id, int best_defensive_quick_move_id, int best_defensive_charge_move_id)
    {
        this.pokemon_number = pokemon_number;
        this.pokemon_name = pokemon_name;
        this.type_id = type_id;
        this.buddy_distance = buddy_distance;
        this.best_offensive_quick_move_id = best_offensive_quick_move_id;
        this.best_offensive_charge_move_id = best_offensive_charge_move_id;
        this.best_defensive_quick_move_id = best_defensive_quick_move_id;
        this.best_defensive_charge_move_id = best_defensive_charge_move_id;
    }


}
