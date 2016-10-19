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



    public Pokemon(PokemonBuilder builder) {
        pokemon_number = builder.getPokemonNumber();
        pokemon_name = builder.getPokemonName();
        type = builder.getType();
        buddy_distance = builder.getBuddyDistance();
        best_offensive_quick_move_id = builder.getBestOffensiveQuickMoveId();
        best_offensive_charge_move_id = builder.getBestOffensiveChargeMoveId();
        best_defensive_quick_move_id = builder.getBestDefensiveQuickMoveId();
        best_defensive_charge_move_id = builder.getBestDefensiveChargeMoveId();
        base_attack = builder.getBaseAttack();
        base_defense = builder.getBaseDefense();
        stamina = builder.getStamina();
        max_cp = builder.getMaxCp();
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
