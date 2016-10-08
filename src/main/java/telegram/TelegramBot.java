package telegram;

import bot.BotConfig;
import com.pokebotgo.PokeBotGoApplication;
import org.telegram.telegrambots.api.methods.send.SendMessage;
import org.telegram.telegrambots.api.objects.Message;
import org.telegram.telegrambots.api.objects.Update;
import org.telegram.telegrambots.bots.TelegramLongPollingBot;
import org.telegram.telegrambots.exceptions.TelegramApiException;
import pokemon.Pokemon;

/**
 * Created by andreshazard on 10/6/16.
 */
public class TelegramBot extends TelegramLongPollingBot {

    public static String newline = System.getProperty("line.separator");

    @Override
    public void onUpdateReceived(Update update) {

        if(update.hasMessage()){
            Message message = update.getMessage();

            //check if the message has text. it could also contain for example a location ( message.hasLocation() )
            if(message.hasText()){
                //create an object that contains the information to send back the message
                SendMessage sendMessageRequest = new SendMessage();
                sendMessageRequest.setChatId(message.getChatId().toString()); //who should get from the message the sender that sent it.
                switch (message.getText()) {

                    case "/charmander":
                        Pokemon pokemon = PokeBotGoApplication.dao.getPokemonWithName("charmander");
                        String response = "Number: " + pokemon.getPokemon_number() + newline +
                                          "Pokemon: " + pokemon.getPokemon_name() + newline +
                                          "Type: " + pokemon.getType() + newline +
                                          "Buddy Distance: " + pokemon.getBuddy_distance() + "km" + newline +
                                          "Best Offence move set: " + pokemon.getBest_offensive_quick_move_id() + "/" +
                                                  pokemon.getBest_offensive_charge_move_id() + newline +
                                          "Best Defensive move set: " + pokemon.getBest_defensive_quick_move_id() + "/" +
                                                  pokemon.getBest_defensive_charge_move_id();

                        sendMessageRequest.setText(response);

                        break;
                    default:
                        sendMessageRequest.setText("Ese comando no lo conozco pasmado");
                }
                try {
                    sendMessage(sendMessageRequest); //at the end, so some magic and send the message ;)
                } catch (TelegramApiException e) {
                    //do some error handling
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
