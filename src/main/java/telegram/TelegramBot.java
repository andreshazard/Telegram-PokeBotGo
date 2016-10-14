package telegram;

import StringTool.StringTool;
import com.pokebotgo.Dao;
import com.pokebotgo.PokeBotGoApplication;
import org.telegram.telegrambots.api.methods.send.SendMessage;
import org.telegram.telegrambots.api.objects.Message;
import org.telegram.telegrambots.api.objects.Update;
import org.telegram.telegrambots.bots.TelegramLongPollingBot;
import org.telegram.telegrambots.exceptions.TelegramApiException;
import pokemon.Pokemon;
import pokemon.PokemonList;
import type.Type;
import type.TypeList;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * class that handles the communication with Telegram bot
 */
public class TelegramBot extends TelegramLongPollingBot {

    private final static Logger LOGGER = Logger.getLogger(BotConfig.class.getName());
    private final static String NEWLINE = System.getProperty("line.separator");
    private final SendMessage sendMessageRequest = new SendMessage();
    private final PokemonList pokemonList = new PokemonList();
    private final TypeList typeList = new TypeList();
    private Message message;
    private Dao dao = PokeBotGoApplication.dao;

    @Override
    public void onUpdateReceived(Update update) {
        /**
         * This method is call whenever something is sent to the bot
         * It will read the data and sent a response if it applies
         * @pram Update object that hold the data sent
         */

        if(update.hasMessage()){
            message = update.getMessage();

            //check if the message has text. it could also contain for example a location ( message.hasLocation() )
            if(message.hasText()){
                //create an object that contains the information to send back the message
                sendMessageRequest.setChatId(message.getChatId().toString()); //who should get from the message the sender that sent it.
                String command = message.getText();
                command = command.toLowerCase();
                setResponseMessage(command);
                try {
                    sendMessage(sendMessageRequest); //at the end, so some magic and send the message ;)
                } catch (TelegramApiException e) {
                    TelegramBot.LOGGER.log(Level.SEVERE, "There was an error sending the message");
                    e.printStackTrace();

                }
            }
        }

    }

    private void setResponseMessage(String command) {
        /**
         * This method will set the response for the user depending on what he sent to the bot.
         * It will log the request of the user the database only if the command is one of the commands
         * @param command that the user sent to the bot
         *
         */
        if ("/start".equals(command)) {
            dao.saveBotUsage(command);
            setStartRespond();
        }
        else if ("/pokemon".equals(command) || "/type".equals(command) || "/pokedex".equals(command)) {
            dao.saveBotUsage(command);
            setDefaultRespond(); //user did not send the parameter
        }
        else if(command.length() >= 5 && "/type".equals(command.substring(0, 5)) &&
                typeList.TypeListCheck(command.substring(6))) {
            setTypeRespond(command);
            dao.saveBotUsage(command);
        }

        else if(command.length() >= 8 && "/pokemon".equals(command.substring(0, 8)) &&
                pokemonList.pokemonListCheck(command.substring(9))) {
            setPokemonRespond(command);
            dao.saveBotUsage(command);
        }
        else if(command.length() >=8 && "/pokedex".equals(command.substring(0, 8)) &&
                StringTool.isNumber(command.substring(9)) && pokemonList.pokemonNumberCheck(Integer.parseInt(command.substring(9)))) {
            setPokemonNumberRespond(Integer.parseInt(command.substring(9)));
            dao.saveBotUsage(command);
        }
        else {
            setDefaultRespond();
        }
    }

    private void setDefaultRespond() {
        sendMessageRequest.setText("Please use one of the commands, followed by a valid parameter" + NEWLINE +
                "Eg: /pokemon pikachu" + NEWLINE +
                "Eg: /type fire" + NEWLINE +
                "Eg: /pokedex 1");

    }

    private void setStartRespond() {
        sendMessageRequest.setText("Hi trainer." + NEWLINE + "Use one of the commands follow by a parameter" +
                " to get information." + NEWLINE + "Eg: /pokemon pikachu" + NEWLINE + "Eg: /type fire" + NEWLINE +
                "Eg: /pokedex 1");
    }

    private void setTypeRespond(String command) {
        Type type = dao.getTypeWithName(command.substring(6));
        String response = "Type: " + type.getName().toUpperCase() + NEWLINE +
                "  Strong Against: " + NEWLINE;
        for (String strongAgainstType: type.getStrongAgainst()) {
            response += "    - " + strongAgainstType + NEWLINE;
        }

        response += "  Weak Against: " + NEWLINE;

        for (String weekAgainstType: type.getWeekAgainst()) {
            response += "    - " + weekAgainstType + NEWLINE;
        }

        sendMessageRequest.setText(response);
    }

    private void setPokemonRespond(String command) {
        Pokemon pokemon = dao.getPokemonWithName(command.substring(9));
        String response = getPokemonStringMessage(pokemon);

        sendMessageRequest.setText(response);

    }

    private void setPokemonNumberRespond(int number) {
        Pokemon pokemon = dao.getPokemonWithNumber(number);
        String response = getPokemonStringMessage(pokemon);
        sendMessageRequest.setText(response);

    }

    private String getPokemonStringMessage(Pokemon pokemon) {
        return  "Number: " + pokemon.getPokemon_number() + NEWLINE +
                "Pokemon: " + pokemon.getPokemon_name() + NEWLINE +
                "Type: " + pokemon.getType() + NEWLINE +
                "Buddy Distance: " + pokemon.getBuddy_distance() + "km" + NEWLINE +
                "Base Attack: " + pokemon.getBase_attack() + NEWLINE +
                "Base Defense: " + pokemon.getBase_defense() + NEWLINE +
                "Stamina: " + pokemon.getStamina() + NEWLINE +
                "Max CP: " + pokemon.getMax_cp() + NEWLINE +
                "Best Offence move set: " + pokemon.getBest_offensive_quick_move_id() + "/" +
                pokemon.getBest_offensive_charge_move_id() + NEWLINE +
                "Best Defensive move set: " + pokemon.getBest_defensive_quick_move_id() + "/" +
                pokemon.getBest_defensive_charge_move_id();

    }

    @Override
    public String getBotUsername() {
        return BotConfig.BOT_USERNAME;
    }

    @Override
    public String getBotToken() {
        return BotConfig.BOT_TOKEN;
    }
}
