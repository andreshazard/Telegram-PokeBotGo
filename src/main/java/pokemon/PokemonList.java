package pokemon;

import java.util.Arrays;
import java.util.List;

/**
 * Created by andreshazard on 10/8/16.
 */
public class PokemonList {

    public final static List<String> POKEMON_LIST = Arrays.asList(
            "bulbasaur",
            "ivysaur",
            "venusaur",
            "charmander",
            "charmeleon",
            "charizard",
            "squirtle",
            "wartortle",
            "blastoise",
            "caterpie",
            "metapod"
            );

    // This class should not be initialize
    private PokemonList() {
    }
}

