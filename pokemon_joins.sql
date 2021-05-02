SELECT "types".type_id, "types".types,"pokemon".pokemon_id, "pokemon".pokemon_name
FROM "types"
JOIN "pokemon"
ON "types".type_id = "pokemon".pokemon_type_id;
