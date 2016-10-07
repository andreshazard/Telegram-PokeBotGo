package com.pokebotgo;

import bot.BotConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.telegram.telegrambots.TelegramBotsApi;
import org.telegram.telegrambots.exceptions.TelegramApiException;
import org.telegram.telegrambots.logging.BotLogger;
import telegram.TelegramBot;

import java.util.logging.Level;

@SpringBootApplication
public class PokebotgoApplication {

	public static void main(String[] args) {
		TelegramBotsApi telegramBotsApi = new TelegramBotsApi();
		try {
			telegramBotsApi.registerBot(new TelegramBot());
		} catch (TelegramApiException e) {
			BotConfig.LOGGER.log(Level.SEVERE, "Error starting the app");
			e.printStackTrace();
		}
		SpringApplication.run(PokebotgoApplication.class, args);
	}
}
