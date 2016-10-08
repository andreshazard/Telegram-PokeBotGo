package com.pokebotgo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import pokemon.Pokemon;

/**
 * Created by andreshazard on 10/7/16.
 */


@Component
public class Dao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Pokemon getPokemonWithName(String name) {
        String query = "select * from pokemon where pokemon_name=" + '"' + name + '"';

        return  this.jdbcTemplate.queryForObject(query, ((resultSet, i) -> {
            System.out.println(resultSet);
            return new Pokemon(
                    resultSet.getInt(2),
                    resultSet.getString(3),
                    resultSet.getInt(4),
                    resultSet.getInt(5),
                    resultSet.getInt(6),
                    resultSet.getInt(7),
                    resultSet.getInt(8),
                    resultSet.getInt(9));
        }));

    }

}
