package com.pokebotgo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import pokemon.Pokemon;
import pokemon.PokemonBuilder;
import telegram.BotConfig;
import type.Type;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Class that handles the calls to the data base
 */


@Component
public class Dao {

    public final static Logger LOGGER = Logger.getLogger(BotConfig.class.getName());

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Pokemon getPokemonWithName(String name) {
        String query = "SELECT p.pokemon_number, " +
        "p.pokemon_name, " +
                "t.type_name, " +
                "p.buddy_distance, " +
                "qa.quick_move_name, " +
                "ca.charge_move_name, " +
                "qd.quick_move_name, " +
                "cd.charge_move_name, " +
                "p.base_attack, " +
                "p.base_defense, " +
                "p.stamina, " +
                "p.max_cp " +
        "FROM pokemon AS p " +
        "INNER JOIN type AS t ON p.type_id=t.type_id " +
        "LEFT JOIN quick_move AS qa ON qa.quick_move_id=p.best_offensive_quick_move_id " +
        "LEFT JOIN charge_move AS ca ON ca.charge_move_id=p.best_offensive_charge_move_id " +
        "LEFT JOIN quick_move AS qd ON qd.quick_move_id=p.best_defensive_quick_move_id " +
        "LEFT JOIN charge_move AS cd ON cd.charge_move_id=p.best_defensive_charge_move_id " +
        "WHERE p.pokemon_name=" + '"' + name + '"';
        return createPokemonObject(query);

    }

    public Pokemon getPokemonWithNumber(int number) {
        String query = "SELECT p.pokemon_number, " +
                "p.pokemon_name, " +
                "t.type_name, " +
                "p.buddy_distance, " +
                "qa.quick_move_name, " +
                "ca.charge_move_name, " +
                "qd.quick_move_name, " +
                "cd.charge_move_name, " +
                "p.base_attack, " +
                "p.base_defense, " +
                "p.stamina, " +
                "p.max_cp " +
                "FROM pokemon AS p " +
                "INNER JOIN type AS t ON p.type_id=t.type_id " +
                "LEFT JOIN quick_move AS qa ON qa.quick_move_id=p.best_offensive_quick_move_id " +
                "LEFT JOIN charge_move AS ca ON ca.charge_move_id=p.best_offensive_charge_move_id " +
                "LEFT JOIN quick_move AS qd ON qd.quick_move_id=p.best_defensive_quick_move_id " +
                "LEFT JOIN charge_move AS cd ON cd.charge_move_id=p.best_defensive_charge_move_id " +
                "WHERE p.pokemon_number=" + '"' + number + '"';


        return createPokemonObject(query);

    }

    private Pokemon createPokemonObject(String query) {
        PokemonBuilder pokemonBuilder = new PokemonBuilder();
        try {
            return this.jdbcTemplate.queryForObject(query, (resultSet, i) -> {
                        pokemonBuilder.Pokemon_number(resultSet.getInt(1));
                        pokemonBuilder.Pokemon_name(resultSet.getString(2));
                        pokemonBuilder.Type(resultSet.getString(3));
                        pokemonBuilder.Buddy_distance(resultSet.getInt(4));
                        pokemonBuilder.Best_offensive_quick_move_id(resultSet.getString(5));
                        pokemonBuilder.Best_offensive_charge_move_id(resultSet.getString(6));
                        pokemonBuilder.Best_defensive_quick_move_id(resultSet.getString(7));
                        pokemonBuilder.Best_defensive_charge_move_id(resultSet.getString(8));
                        pokemonBuilder.Base_attack(resultSet.getInt(9));
                        pokemonBuilder.Base_defense(resultSet.getInt(10));
                        pokemonBuilder.Stamina(resultSet.getInt(11));
                        pokemonBuilder.Max_cp(resultSet.getInt(12));
                        return pokemonBuilder.build();
            });
        } catch (NullPointerException e) {
            Dao.LOGGER.log(Level.SEVERE, "There was an issue getting the info from database");
            e.printStackTrace();
            return null;
        }
    }

    public Type getTypeWithName(String name) {
        List<String> strongAgainst = new ArrayList<>();
        List<String> weekAgainst = new ArrayList<>();
        String query = "SELECT t.type_name, ts.type_name, tr.relation " +
                "FROM type_relation AS tr " +
                "LEFT JOIN TYPE AS t ON t.type_id=tr.type_id " +
                "LEFT JOIN type AS ts ON ts.type_id=tr.type_id_secondary " +
                "  WHERE t.type_name =" + '"' + name + '"';
        try {
            SqlRowSet sqlRowSet = this.jdbcTemplate.queryForRowSet(query);
            while (sqlRowSet.next()) {
                if (sqlRowSet.getInt(3) == 2) {
                    strongAgainst.add(sqlRowSet.getString(2));

                }
                else {
                    weekAgainst.add(sqlRowSet.getString(2));
                }
            }

            Type type = new Type(name, strongAgainst, weekAgainst);
            return type;

        } catch (NullPointerException e) {
            Dao.LOGGER.log(Level.SEVERE, "There was an issue getting the info from database");
            e.printStackTrace();
            return null;
        }

    }

    public void saveBotUsage(String command) {
        String query = "INSERT INTO bot_usage (message) value (" + '"' + command + '"' + ")";
        try {
            this.jdbcTemplate.execute(query);
        }
        catch (NullPointerException e) {
            Dao.LOGGER.log(Level.SEVERE, "There was an issue saving usage to the database");
            e.printStackTrace();
        }
    }
}
