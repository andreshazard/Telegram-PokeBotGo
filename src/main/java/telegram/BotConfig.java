package telegram;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Class that holds the bot's information
 */
public class BotConfig {

    public static final String BOT_USERNAME = "PokeBotGo";
    public static final String BOT_TOKEN = getBotTokenFromFile();
    public static final Logger LOGGER = Logger.getLogger(BotConfig.class.getName());

    // No public constructor
    private BotConfig() {}


    private static final  String getBotTokenFromFile() {
        String fileName = "bot_token.txt";
        try (Stream<String> stream = Files.lines(Paths.get(fileName))){
            List<String> list;
            list = stream.collect(Collectors.toList());
            return list.get(0);
        }
        catch (IOException e) {
            LOGGER.log(Level.SEVERE, "Make sure file PokeBotGo is present on root path" + e);
        }

        return "error"; //this should not be reach
    }

    private static final  String getTestBotTokenFromFile() {
        String fileName = "test_bot_token.txt";
        try (Stream<String> stream = Files.lines(Paths.get(fileName))){
            List<String> list;
            list = stream.collect(Collectors.toList());
            return list.get(0);
        }
        catch (IOException e) {
            LOGGER.log(Level.SEVERE, "Make sure file test PokeBotGo is present on root path" + e);
        }

        return "error"; //this should not be reach

    }

}
