CREATE TABLE "types" (
    "type_id" INT   NOT NULL,
    "types" TEXT   NOT NULL,
    CONSTRAINT "pk_types" PRIMARY KEY (
        "type_id"
     )
);

CREATE TABLE "pokemon" (
    "pokemon_id" INT   NOT NULL,
    "pokemon_type_id" INT   NOT NULL,
    "pokemon_sub-type_id" INT   NOT NULL,
    "pokemon_name" TEXT   NOT NULL,
    "base_attack" INT   NOT NULL,
    "base_defense" INT   NOT NULL,
    "base_stamina" INT   NOT NULL,
    CONSTRAINT "pk_pokemon" PRIMARY KEY (
        "pokemon_id"
     )
);

ALTER TABLE "pokemon" ADD CONSTRAINT "fk_pokemon_pokemon_type_id" FOREIGN KEY("pokemon_type_id")
REFERENCES "types" ("type_id");

ALTER TABLE "pokemon" ADD CONSTRAINT "fk_pokemon_pokemon_sub-type_id" FOREIGN KEY("pokemon_sub-type_id")
REFERENCES "types" ("type_id");


