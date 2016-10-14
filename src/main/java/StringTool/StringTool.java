package StringTool;

/**
 * Class to verify if String is number or not.
 *
 */
public class StringTool {

    public final static boolean isNumber(String str) {
        try
        {
            int number = Integer.parseInt(str);
        }
        catch(NumberFormatException nfe)
        {
            return false;
        }
        return true;
    }
}
