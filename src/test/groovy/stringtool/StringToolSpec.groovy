package stringtool

import spock.lang.Specification
/**
 * Created by andreshazard on 10/14/16.
 */
class StringToolSpec extends Specification {


    def "a non digit string should return false when calling isNumber"() {

        given: "a non digit string"
        String nonDigit = "letters"

        when: "isNumber is called"
        boolean answer = StringTool.isNumber(nonDigit)

        then: "it will return false"
        assert (answer == false)
    }

    def "a digit string should return true when calling isNumber"() {

        given: "a digit string"
        String nonDigit = "5"

        when: "isNumber is called"
        boolean answer = StringTool.isNumber(nonDigit)

        then: "it will return true"
        assert (answer == true)
    }
}
