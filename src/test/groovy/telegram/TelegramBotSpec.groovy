import com.blogspot.toomuchcoding.spock.subjcollabs.Collaborator
import com.blogspot.toomuchcoding.spock.subjcollabs.Subject
import com.pokebotgo.Dao
import org.telegram.telegrambots.api.methods.send.SendMessage
import org.telegram.telegrambots.api.objects.Message
import org.telegram.telegrambots.api.objects.Update
import pokemon.Pokemon
import pokemon.PokemonBuilder
import spock.lang.Shared
import spock.lang.Specification
import telegram.TelegramBot
import type.Type

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
    Dao dao = Mock();

    @Shared
    Pokemon pokemonPikachu = new PokemonBuilder()
                    .pokemon_number(25)
    .pokemon_name('pikachu')
    .type('electric')
    .buddy_distance(1)
    .best_offensive_quick_move_id('Thunder Shock')
    .best_offensive_charge_move_id('Thunder')
    .best_defensive_quick_move_id('Quick Attack')
    .best_defensive_charge_move_id('Thunderbolt')
    .base_attack(124)
    .base_defense(108)
    .stamina(70)
    .max_cp(888)
    .build();

    @Shared
    String pokemonPikachuResponse = 'Number: 25\nPokemon: pikachu\nType: electric\nBuddy Distance: 1km\nBase Attack: 124' +
            '\nBase Defense: 108\nStamina: 70\nMax CP: 888\nBest Offence move set: Thunder Shock/Thunder' +
            '\nBest Defensive move set: Quick Attack/Thunderbolt'

    def "when update has no message nothing should be return to the user"() {

        given: "an update request with no message"
        update.hasMessage() >> false

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "no message should be return to the user"
        0 * sendMessageRequest.setText(_ as String)
    }

    def "when update has no message nothing should log into the db"() {

        given: "an update request with no message"
        update.hasMessage() >> false

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "it will not be log the the db"
        0 * dao.saveBotUsage(_ as String)
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
                '\nEg: /pokemon pikachu\nEg: /type fire\nEg: /pokedex 1')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has message '/start' it will be log into the database"() {

        given: "an update request with message '/start' "
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/start"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "it will be log the the db"
        1 * dao.saveBotUsage("/start")

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
                '\nEg: /type fire\nEg: /pokedex 1')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has a message that is not a command nothing will be log to the db"(){

        given: "an update request with a message that is not a command"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/not_a_valid_command"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "it will not be log the the db"
        0 * dao.saveBotUsage(_ as String)

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
                '\nEg: /type fire\nEg: /pokedex 1')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)


    }

    def "when update has a valid command /pokemon but no parameter it will be log the db"() {

        given: "an update request with a valid command but no parameter"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokemon"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "it will be log the the db"
        1 * dao.saveBotUsage('/pokemon')

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
                '\nEg: /type fire\nEg: /pokedex 1')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)
    }

    def "when update has a valid command /type but no parameter it will be log to the db"() {

        given: "an update request with a valid command but no parameter"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/type"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "it will be log the the db"
        1 * dao.saveBotUsage('/type')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)
    }

    def "when update has a valid command /pokedex but no parameter a default message should be sent"() {

        given: "an update request with a valid command but no parameter"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokedex"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "a message will ask the user to use a command"
        1 * sendMessageRequest.setText('Please use one of the commands, followed by a valid parameter\nEg: /pokemon pikachu' +
                '\nEg: /type fire\nEg: /pokedex 1')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)
    }

    def "when update has a valid command /pokedex but no parameter it will be log to the db"() {

        given: "an update request with a valid command but no parameter"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokedex"

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "it will be log to the db"
        1 * dao.saveBotUsage('/pokedex')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)
    }


    def "when update has a valid pokemon command information about pokemon should be sent"(){

        given: "an update request with a valid message"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokemon pikachu"

        and: "the dao object returns the pokemon"
        dao.getPokemonWithName('pikachu') >> pokemonPikachu;

        when: "onUpdateReceived is called and the dao object return the pokemon"
        telegramBot.onUpdateReceived(update)

        then: "information about the pokemon is sent"
        1 * sendMessageRequest.setText(pokemonPikachuResponse)

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has a valid pokemon command it should be log to the db"(){

        given: "an update request with a valid message"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokemon pikachu"

        and: "the dao object returns the pokemon"
        dao.getPokemonWithName('pikachu') >> pokemonPikachu;

        when: "onUpdateReceived is called and the dao object return the pokemon"
        telegramBot.onUpdateReceived(update)

        then: "information about the pokemon is sent"
        1 * dao.saveBotUsage('/pokemon pikachu')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has a valid type command type matchups should be sent"(){

        given: "an update request with a valid message"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/type fire"

        and: "the dao returns the type"
        dao.getTypeWithName('fire') >> (new Type('fire',['Steel'], ['ground']))

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "information about the pokemon is sent"
        1 * sendMessageRequest.setText('Type: FIRE\n  Strong Against: \n    - Steel\n  Weak Against: \n    - ground\n')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has a valid type command it should be log to the db"(){

        given: "an update request with a valid message"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/type fire"

        and: "the dao returns the type"
        dao.getTypeWithName('fire') >> (new Type('fire',['Steel'], ['ground']))

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "it will be log to the db"
        1 * dao.saveBotUsage('/type fire')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }

    def "when update has a valid pokedex command pokemon should be sent"(){

        given: "an update request with a valid message"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokedex 1"

        and: "the dao returns the pokemon"
        dao.getPokemonWithNumber(1) >> pokemonPikachu;

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "information about the pokemon is sent"
        1 * sendMessageRequest.setText(pokemonPikachuResponse)

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)
    }

    def "when update has a valid pokedex command it should be log to the db"(){

        given: "an update request with a valid message"
        update.hasMessage() >> true
        update.getMessage() >> message
        message.hasText() >> true
        message.getText() >> "/pokedex 1"

        and: "the dao returns the pokemon"
        dao.getPokemonWithNumber(1) >> pokemonPikachu;

        when: "onUpdateReceived is called"
        telegramBot.onUpdateReceived(update)

        then: "it will be log to the db"
        1 * dao.saveBotUsage('/pokedex 1')

        and: "expect error since we are not sending the message when testing"
        thrown(NullPointerException)

    }
}

