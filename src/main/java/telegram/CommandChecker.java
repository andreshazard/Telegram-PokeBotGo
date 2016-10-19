package telegram;

import pokemon.PokemonList;
import type.TypeList;
import StringTool.StringTool;

/**
 * Class that handles checking if command sent by user is valid or not
 */
public class CommandChecker {

    private final PokemonList pokemonList = new PokemonList();
    private final TypeList typeList = new TypeList();

    public boolean isValidStartCommand(String command) {
        return "/start".equals(command);
    }

    public boolean isValidPokedexComand(String command) {
        return command.length() >=8 && "/pokedex".equals(command.substring(0, 8)) &&
                StringTool.isNumber(command.substring(9)) && pokemonList.pokemonNumberCheck(Integer.parseInt(command.substring(9)));
    }

    public boolean isValidPokemonCommand(String command) {
        return command.length() >= 8 && "/pokemon".equals(command.substring(0, 8)) &&
                pokemonList.pokemonListCheck(command.substring(9));
    }

    public boolean isValidTypeCommand(String command) {
        return command.length() >= 5 && "/type".equals(command.substring(0, 5)) &&
                typeList.TypeListCheck(command.substring(6));
    }

    public boolean isCommandWithNoParameter(String command) {
        return "/pokemon".equals(command) || "/type".equals(command) || "/pokedex".equals(command);
    }
}
