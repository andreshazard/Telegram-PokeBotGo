package type;

import java.util.Arrays;
import java.util.List;

/**
 * Class to hold all possible types for the /type command
 */
public class TypeList {

    private static final List<String> TYPE_LIST = Arrays.asList(
            "bug",
            "dark",
            "dragon",
            "electric",
            "fairy",
            "fighting",
            "fire",
            "flying",
            "ghost",
            "grass",
            "ground",
            "ice",
            "normal",
            "poison",
            "psychic",
            "rock",
            "steel",
            "water"
    );

    public boolean typeListCheck(String name) {
        return TYPE_LIST.contains(name);
    }
}
