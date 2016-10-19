package stringtool;

/**
 * Class to verify if String is number or not.
 *
 */
public class StringTool {

    // No public constructor
    private StringTool() {}

    public static final boolean isNumber(String str) {
        try
        {
            int number = Integer.parseInt(str);
            return true;
        }
        catch(NumberFormatException nfe)
        {
            return false;
        }
    }
}
