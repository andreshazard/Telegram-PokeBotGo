import com.blogspot.toomuchcoding.spock.subjcollabs.Collaborator
import com.blogspot.toomuchcoding.spock.subjcollabs.Subject
import com.pokebotgo.Dao
import org.telegram.telegrambots.api.methods.send.SendMessage
import org.telegram.telegrambots.api.objects.Message
import org.telegram.telegrambots.api.objects.Update
import spock.lang.Specification
import telegram.TelegramBot

class TelegramBotSpec extends Specification {

    @Subject
    TelegramBot telegramBot = new TelegramBot();

    @Collaborator
    Update update = Stub();

    @Collaborator
    Message message = Stub();

    @Collaborator
    SendMessage sendMessageRequest = Mock();

    @Collaborator
    Dao dao = Stub();

    def "when update has no message nothing should be return to the user"() {

        given: "an update request with no message"
        update.hasMessage() >> false

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "no message should be return to the user"
        0 * sendMessageRequest.setText(_ as String)
    }

    def "when update has message '/start' then a greeting should be send to the user"() {

        given: "an update request with message '/start' "
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/start"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "a greeting will be sent back to the user"
        1 * sendMessageRequest.setText('Hi trainer.\nUse one of the commands follow by a parameter to get information.' +
                '\nEg: /pokemon pikachu\nEg: /type fire')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has a message that is not a command a default message should be sent"(){

        given: "an update request with a message that is not a command"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/not_a_valid_command"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "a message will ask the user to use a command"
        1 * sendMessageRequest.setText('Please use one of the commands, followed by a valid parameter\nEg: /pokemon pikachu' +
                '\nEg: /type fire')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has a valid command /pokemon but no parameter a default message should be sent"() {

        given: "an update request with a valid command but no parameter"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokemon"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "a message will ask the user to use a command"
        1 * sendMessageRequest.setText('Please use one of the commands, followed by a valid parameter\nEg: /pokemon pikachu' +
                '\nEg: /type fire')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)


    }

    def "when update has a valid command /type but no parameter a default message should be sent"() {

        given: "an update request with a valid command but no parameter"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/type"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "a message will ask the user to use a command"
        1 * sendMessageRequest.setText('Please use one of the commands, followed by a valid parameter\nEg: /pokemon pikachu' +
                '\nEg: /type fire')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)


    }

    def "when update has a valid pokemon command information about pokemon should be sent"(){

        given: "an update request with a valid message"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokemon pikachu"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "information about the pokemon is sent"
        1 * sendMessageRequest.setText('Number: 0\nPokemon: \nType: \nBuddy Distance: 0km\nBest Offence move set: ' +
                '/\nBest Defensive move set: /')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has a valid type command type matchups should be sent"(){

        given: "an update request with a valid message"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/type fire"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "information about the pokemon is sent"
        1 * sendMessageRequest.setText('Type: \n  Strong Against: \n  Weak Against: \n')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }
}

