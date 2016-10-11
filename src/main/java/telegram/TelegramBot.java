package telegram;

import com.pokebotgo.Dao;
import com.pokebotgo.PokeBotGoApplication;
import org.telegram.telegrambots.api.methods.send.SendMessage;
import org.telegram.telegrambots.api.objects.Message;
import org.telegram.telegrambots.api.objects.Update;
import org.telegram.telegrambots.bots.TelegramLongPollingBot;
import org.telegram.telegrambots.exceptions.TelegramApiException;
import pokemon.Pokemon;
import pokemon.PokemonList;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * class that handles the communication with Telegram bot
 */
public class TelegramBot extends TelegramLongPollingBot {

    private final static Logger LOGGER = Logger.getLogger(BotConfig.class.getName());
    private final static String newline = System.getProperty("line.separator");
    private final SendMessage sendMessageRequest = new SendMessage();
    private final PokemonList pokemonList = new PokemonList();
    private Message message;
    private Dao dao = PokeBotGoApplication.dao;

    @Override
    public void onUpdateReceived(Update update) {

        if(update.hasMessage()){
            message = update.getMessage();

            //check if the message has text. it could also contain for example a location ( message.hasLocation() )
            if(message.hasText()){
                //create an object that contains the information to send back the message
                sendMessageRequest.setChatId(message.getChatId().toString()); //who should get from the message the sender that sent it.
                String command = message.getText();
                command.toLowerCase();
                if (command.equals("/start")) {
                    sendMessageRequest.setText("Hi trainer." + newline + "Use command /pokemon follow by a pokemon's name " +
                            "to get information." + newline + "Eg: /pokemon pikachu");
                }
                else if (command.length() < 9 || !pokemonList.PokemonListCheck(command.substring(9))) {
                    sendMessageRequest.setText("Please use command /pokemon follow by a pokemon's name" + newline +
                            "Eg: /pokemon pikachu");
                }

                else {
                    Pokemon pokemon = dao.getPokemonWithName(command.substring(9));
                    String response = "Number: " + pokemon.getPokemon_number() + newline +
                            "Pokemon: " + pokemon.getPokemon_name() + newline +
                            "Type: " + pokemon.getType() + newline +
                            "Buddy Distance: " + pokemon.getBuddy_distance() + "km" + newline +
                            "Best Offence move set: " + pokemon.getBest_offensive_quick_move_id() + "/" +
                            pokemon.getBest_offensive_charge_move_id() + newline +
                            "Best Defensive move set: " + pokemon.getBest_defensive_quick_move_id() + "/" +
                            pokemon.getBest_defensive_charge_move_id();

                    sendMessageRequest.setText(response);
                }

                try {
                    sendMessage(sendMessageRequest); //at the end, so some magic and send the message ;)
                } catch (TelegramApiException e) {
                    TelegramBot.LOGGER.log(Level.SEVERE, "There was an error sending the message");
                    e.printStackTrace();

                }
            }
        }

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
