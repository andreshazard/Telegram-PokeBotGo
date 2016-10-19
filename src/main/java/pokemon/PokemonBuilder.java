package pokemon;

/**
 * Created by andreshazard on 10/18/16.
 */
public class PokemonBuilder {

    private int pokemon_number;
    private String pokemon_name;
    private String type;
    private int buddy_distance;
    private String best_offensive_quick_move_id;
    private String best_offensive_charge_move_id;
    private String best_defensive_quick_move_id;
    private String best_defensive_charge_move_id;
    private int base_attack;
    private int base_defense;
    private int stamina;
    private int max_cp;

    public Pokemon build() {
        if (pokemon_number < 0 || pokemon_number > 151) {
            throw new IllegalStateException("Not valid pokemon number");
        }
        if (pokemon_name == null) {
            throw new IllegalStateException("No pokemon_name");
        }
        if (type == null) {
            throw new IllegalStateException("No type name");
        }
        if (buddy_distance != 1 && buddy_distance != 3 && buddy_distance !=5) {
            throw new IllegalStateException("Not valid buddy distance");
        }
        if (best_offensive_quick_move_id == null) {
            throw new IllegalStateException("No best offensive quick move");
        }
        if (best_offensive_charge_move_id == null) {
            throw new IllegalStateException("No best offensive charge move");
        }
        if (best_defensive_quick_move_id == null) {
            throw new IllegalStateException("No best defensive quick move");
        }
        if (best_defensive_charge_move_id == null) {
            throw new IllegalStateException("No best defensive charge move");
        }
        if (base_attack < 0) {
            throw new IllegalStateException("Not valid base attack");
        }
        if (base_defense < 0) {
            throw new IllegalStateException("Not valid base defense");
        }
        if (stamina < 0) {
            throw new IllegalStateException("Not valid stamina");
        }
        if (max_cp < 0) {
            throw new IllegalStateException("Not valid max_cp");
        }
        return new Pokemon(this);
    }

    public PokemonBuilder Max_cp(int max_cp) {
        this.max_cp = max_cp;
        return this;
    }

    public PokemonBuilder Stamina(int stamina) {
        this.stamina = stamina; return this; } public PokemonBuilder Base_defense(int base_defense) {
        this.base_defense = base_defense;
        return this;
    }

    public PokemonBuilder Base_attack(int base_attack) {
        this.base_attack = base_attack;
        return this;
    }

    public PokemonBuilder Best_defensive_charge_move_id(String best_defensive_charge_move_id) {
        this.best_defensive_charge_move_id = best_defensive_charge_move_id;
        return this;
    }

    public PokemonBuilder Best_defensive_quick_move_id(String best_defensive_quick_move_id) {
        this.best_defensive_quick_move_id = best_defensive_quick_move_id;
        return this;
    }

    public PokemonBuilder Best_offensive_charge_move_id(String best_offensive_charge_move_id) {
        this.best_offensive_charge_move_id = best_offensive_charge_move_id;
        return this;
    }

    public PokemonBuilder Best_offensive_quick_move_id(String best_offensive_quick_move_id) {
        this.best_offensive_quick_move_id = best_offensive_quick_move_id;
        return this;
    }

    public PokemonBuilder Buddy_distance(int buddy_distance) {
        this.buddy_distance = buddy_distance;
        return this;
    }

    public PokemonBuilder Type(String type) {
        this.type = type;
        return this;
    }

    public PokemonBuilder Pokemon_name(String pokemon_name) {
        this.pokemon_name = pokemon_name;
        return this;
    }

    public PokemonBuilder Pokemon_number(int pokemon_number) {
        this.pokemon_number = pokemon_number;
        return this;
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