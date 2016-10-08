package com.pokebotgo;

import bot.BotConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.telegram.telegrambots.TelegramBotsApi;
import org.telegram.telegrambots.api.objects.Update;
import org.telegram.telegrambots.exceptions.TelegramApiException;
import telegram.TelegramBot;

import java.sql.SQLException;
import java.util.logging.Level;

@SpringBootApplication
public class PokeBotGoApplication {

	public static Dao dao;


	public static void main(String[] args) throws SQLException {

		ConfigurableApplicationContext context = SpringApplication.run(PokeBotGoApplication.class, args);

		dao = (Dao) context.getBean("dao");
		TelegramBotsApi telegramBotsApi = new TelegramBotsApi();

		try {
			telegramBotsApi.registerBot(new TelegramBot());
		} catch (TelegramApiException e) {
			BotConfig.LOGGER.log(Level.SEVERE, "Error starting the app");
			e.printStackTrace();
		}
	}

}
