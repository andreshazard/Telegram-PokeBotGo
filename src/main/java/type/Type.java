package type;

import java.util.List;

/**
 * Created by andreshazard on 10/12/16.
 */
public class Type {

    private String name;
    private List<String> strongAgainst;
    private List<String> weekAgainst;

    public Type(String name, List<String> strongAgainst, List<String> weekAgainst) {
        this.name = name;
        this.strongAgainst = strongAgainst;
        this.weekAgainst = weekAgainst;
    }

    public String getName() {
        return name;
    }

    public List<String> getStrongAgainst() {
        return strongAgainst;
    }

    public List<String> getWeekAgainst() {
        return weekAgainst;
    }

}
