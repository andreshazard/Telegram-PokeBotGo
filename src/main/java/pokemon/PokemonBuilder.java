package pokemon;

/**
 * Created by andreshazard on 10/18/16.
 */
public class PokemonBuilder {

    private int pokemonNumber;
    private String pokemonName;
    private String type;
    private int buddyDistance;
    private String bestOffensiveQuickMoveId;
    private String bestOffensiveChargeMoveId;
    private String bestDefensiveQuickMoveId;
    private String bestDefensiveChargeMoveId;
    private int baseAttack;
    private int baseDefense;
    private int stamina;
    private int maxCp;

    public Pokemon build() {
        if (pokemonNumber < 0 || pokemonNumber > 151) {
            throw new IllegalStateException("Not valid pokemon number");
        }
        if (pokemonName == null) {
            throw new IllegalStateException("No pokemonName");
        }
        if (type == null) {
            throw new IllegalStateException("No type name");
        }
        if (buddyDistance != 1 && buddyDistance != 3 && buddyDistance !=5) {
            throw new IllegalStateException("Not valid buddy distance");
        }
        if (bestOffensiveQuickMoveId == null) {
            throw new IllegalStateException("No best offensive quick move");
        }
        if (bestOffensiveChargeMoveId == null) {
            throw new IllegalStateException("No best offensive charge move");
        }
        if (bestDefensiveQuickMoveId == null) {
            throw new IllegalStateException("No best defensive quick move");
        }
        if (bestDefensiveChargeMoveId == null) {
            throw new IllegalStateException("No best defensive charge move");
        }
        if (baseAttack < 0) {
            throw new IllegalStateException("Not valid base attack");
        }
        if (baseDefense < 0) {
            throw new IllegalStateException("Not valid base defense");
        }
        if (stamina < 0) {
            throw new IllegalStateException("Not valid stamina");
        }
        if (maxCp < 0) {
            throw new IllegalStateException("Not valid maxCp");
        }
        return new Pokemon(this);
    }

    public PokemonBuilder maxCp(int maxCp) {
        this.maxCp = maxCp;
        return this;
    }

    public PokemonBuilder stamina(int stamina) {
        this.stamina = stamina;
        return this;
    }

    public PokemonBuilder baseDefense(int baseDefense) {
        this.baseDefense = baseDefense;
        return this;
    }

    public PokemonBuilder baseAttack(int baseAttack) {
        this.baseAttack = baseAttack;
        return this;
    }

    public PokemonBuilder bestDefensiveChargeMoveId(String bestDefensiveChargeMoveId) {
        this.bestDefensiveChargeMoveId = bestDefensiveChargeMoveId;
        return this;
    }

    public PokemonBuilder bestDefensiveQuickMoveId(String bestDefensiveQuickMoveId) {
        this.bestDefensiveQuickMoveId = bestDefensiveQuickMoveId;
        return this;
    }

    public PokemonBuilder bestOffensiveChargeMoveId(String bestOffensiveChargeMoveId) {
        this.bestOffensiveChargeMoveId = bestOffensiveChargeMoveId;
        return this;
    }

    public PokemonBuilder bestOffensiveQuickMoveId(String bestOffensiveQuickMoveId) {
        this.bestOffensiveQuickMoveId = bestOffensiveQuickMoveId;
        return this;
    }

    public PokemonBuilder buddyDistance(int buddyDistance) {
        this.buddyDistance = buddyDistance;
        return this;
    }

    public PokemonBuilder type(String type) {
        this.type = type;
        return this;
    }

    public PokemonBuilder pokemonName(String pokemonName) {
        this.pokemonName = pokemonName;
        return this;
    }

    public PokemonBuilder pokemonNumber(int pokemonNumber) {
        this.pokemonNumber = pokemonNumber;
        return this;
    }

    public int getPokemonNumber() {
        return pokemonNumber;
    }

    public String getPokemonName() {
        return pokemonName;
    }

    public String getType() {
        return type;
    }

    public int getBuddyDistance() {
        return buddyDistance;
    }

    public String getBestOffensiveQuickMoveId() {
        return bestOffensiveQuickMoveId;
    }

    public String getBestOffensiveChargeMoveId() {
        return bestOffensiveChargeMoveId;
    }

    public String getBestDefensiveQuickMoveId() {
        return bestDefensiveQuickMoveId;
    }

    public String getBestDefensiveChargeMoveId() {
        return bestDefensiveChargeMoveId;
    }

    public int getBaseAttack() {
        return baseAttack;
    }

    public int getBaseDefense() {
        return baseDefense;
    }

    public int getStamina() {
        return stamina;
    }

    public int getMaxCp() {
        return maxCp;
    }
}