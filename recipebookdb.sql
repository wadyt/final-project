--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: recipes; Type: TABLE; Schema: public; Owner: wady
--

CREATE TABLE recipes (
    id integer NOT NULL,
    name character(255),
    ingredients text,
    directions text
);


ALTER TABLE recipes OWNER TO wady;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: wady
--

CREATE SEQUENCE recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recipes_id_seq OWNER TO wady;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wady
--

ALTER SEQUENCE recipes_id_seq OWNED BY recipes.id;


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: wady
--

ALTER TABLE ONLY recipes ALTER COLUMN id SET DEFAULT nextval('recipes_id_seq'::regclass);


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: wady
--

COPY recipes (id, name, ingredients, directions) FROM stdin;
2	Real Italian Calzones                                                                                                                                                                                                                                          	1 (.25 ounce) package active dry yeast,1 cup warm water,1 tablespoon olive oil,1 teaspoon white sugar,1 teaspoon salt,2 1/2 cups all-purpose flour,1/2 cup ricotta cheese,1 1/2 cups shredded Cheddar cheese,1/2 cup diced pepperoni,1/2 cup sliced fresh mushrooms,1 egg	To Make Dough: In a small bowl, dissolve yeast in water. Add the oil, sugar and salt; mix in 1 cup of the flour until smooth. Gradually stir in the rest of the flour, until dough is smooth and workable. Knead dough on a lightly floured surface for about 5 minutes, or until it is elastic. Lay dough in a bowl containing 1 teaspoon olive oil, then flip the dough, cover and let rise for 40 minutes, or until almost doubled.
1	Fluffy Pancakes                                                                                                                                                                                                                                                	3/4 cup milk 2 Tbsp white vinegar 1 cup flour 2 Tbsp sugar 1 tsp baking powder 1/2 tsp baking soda 1/2 tsp salt 1 egg 2 Tbsp butter	In a small bowl, stir together milk and vinegar. Allow to sit for five minutes. It will look curdled–that is normal.\r\nCombine flour, sugar, baking powder, baking soda, and salt in a separate bowl.\r\nPlace butter in a small bowl and melt in the microwave. Once melted, crack the egg into the butter and stir with a fork or whisk until well-combined. Pour butter/egg mixture into milk/vinegar mixture and mix again.\r\nPour the wet ingredients into the dry ingredients all at once. Gently stir only until all ingredients are uniformly moist. Don’t over mix or the pancakes will be tough.\r\nHeat a skillet over medium heat, spray with cooking spray, and drop 1/4 cup spoonfuls of batter onto skillet. Cook until bubbles form and pop, then flip and cook the other side.
11	Caveman T-Bones with Bell Pepper Hash                                                                                                                                                                                                                          	2\tT-bone steaks (each 12 to 16 ounces and 1 1/4 to 1 1/2 inches thick)\r\nCoarse salt (kosher or sea) and coarsely cracked black peppercorns,1/4\tcup extra virgin olive oil\r\n1\tred bell pepper, stemmed, seeded, and sliced into strips (1/4 inch by 2 inches)\r\n1\tyellow bell pepper, stemmed, seeded, and sliced into strips (1/4 inch by 2 inches)\r\n4\tcloves garlic, thinly sliced\r\n1/2\tcup fresh flat-leaf parsley leaves, coarsely chopped	Build a charcoal fire and rake the coals into an even layer. (Leave the front third of your grill coal-free.) When the coals glow orange, fan them with a newspaper to blow off any loose ash. Generously, and I mean generously, season the steaks on both sides with salt and cracked pepper. Place the steaks directly on the embers about 2 inches apart. Grill until cooked to taste, about 4 minutes per side for medium-rare, turning with tongs. Move the steaks after 2 minutes on each side so they cook evenly. Using tongs, lift the steaks out of the fire, shaking each to dislodge any clinging embers. Using a basting brush, brush off any loose ash and arrange the steaks on a platter or plates. Let the steaks rest, loosely tented with aluminum foil, while you make the hash.
\.


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wady
--

SELECT pg_catalog.setval('recipes_id_seq', 11, true);


--
-- Name: recipes id; Type: CONSTRAINT; Schema: public; Owner: wady
--

ALTER TABLE ONLY recipes
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: recipes; Type: TABLE; Schema: public; Owner: wady
--

CREATE TABLE recipes (
    id integer NOT NULL,
    name character(255),
    ingredients text,
    directions text
);


ALTER TABLE recipes OWNER TO wady;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: wady
--

CREATE SEQUENCE recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recipes_id_seq OWNER TO wady;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wady
--

ALTER SEQUENCE recipes_id_seq OWNED BY recipes.id;


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: wady
--

ALTER TABLE ONLY recipes ALTER COLUMN id SET DEFAULT nextval('recipes_id_seq'::regclass);


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: wady
--

COPY recipes (id, name, ingredients, directions) FROM stdin;
2	Real Italian Calzones                                                                                                                                                                                                                                          	1 (.25 ounce) package active dry yeast,1 cup warm water,1 tablespoon olive oil,1 teaspoon white sugar,1 teaspoon salt,2 1/2 cups all-purpose flour,1/2 cup ricotta cheese,1 1/2 cups shredded Cheddar cheese,1/2 cup diced pepperoni,1/2 cup sliced fresh mushrooms,1 egg	To Make Dough: In a small bowl, dissolve yeast in water. Add the oil, sugar and salt; mix in 1 cup of the flour until smooth. Gradually stir in the rest of the flour, until dough is smooth and workable. Knead dough on a lightly floured surface for about 5 minutes, or until it is elastic. Lay dough in a bowl containing 1 teaspoon olive oil, then flip the dough, cover and let rise for 40 minutes, or until almost doubled.
1	Fluffy Pancakes                                                                                                                                                                                                                                                	3/4 cup milk 2 Tbsp white vinegar 1 cup flour 2 Tbsp sugar 1 tsp baking powder 1/2 tsp baking soda 1/2 tsp salt 1 egg 2 Tbsp butter	In a small bowl, stir together milk and vinegar. Allow to sit for five minutes. It will look curdled–that is normal.\r\nCombine flour, sugar, baking powder, baking soda, and salt in a separate bowl.\r\nPlace butter in a small bowl and melt in the microwave. Once melted, crack the egg into the butter and stir with a fork or whisk until well-combined. Pour butter/egg mixture into milk/vinegar mixture and mix again.\r\nPour the wet ingredients into the dry ingredients all at once. Gently stir only until all ingredients are uniformly moist. Don’t over mix or the pancakes will be tough.\r\nHeat a skillet over medium heat, spray with cooking spray, and drop 1/4 cup spoonfuls of batter onto skillet. Cook until bubbles form and pop, then flip and cook the other side.
11	Caveman T-Bones with Bell Pepper Hash                                                                                                                                                                                                                          	2\tT-bone steaks (each 12 to 16 ounces and 1 1/4 to 1 1/2 inches thick)\r\nCoarse salt (kosher or sea) and coarsely cracked black peppercorns,1/4\tcup extra virgin olive oil\r\n1\tred bell pepper, stemmed, seeded, and sliced into strips (1/4 inch by 2 inches)\r\n1\tyellow bell pepper, stemmed, seeded, and sliced into strips (1/4 inch by 2 inches)\r\n4\tcloves garlic, thinly sliced\r\n1/2\tcup fresh flat-leaf parsley leaves, coarsely chopped	Build a charcoal fire and rake the coals into an even layer. (Leave the front third of your grill coal-free.) When the coals glow orange, fan them with a newspaper to blow off any loose ash. Generously, and I mean generously, season the steaks on both sides with salt and cracked pepper. Place the steaks directly on the embers about 2 inches apart. Grill until cooked to taste, about 4 minutes per side for medium-rare, turning with tongs. Move the steaks after 2 minutes on each side so they cook evenly. Using tongs, lift the steaks out of the fire, shaking each to dislodge any clinging embers. Using a basting brush, brush off any loose ash and arrange the steaks on a platter or plates. Let the steaks rest, loosely tented with aluminum foil, while you make the hash.
\.


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wady
--

SELECT pg_catalog.setval('recipes_id_seq', 11, true);


--
-- Name: recipes id; Type: CONSTRAINT; Schema: public; Owner: wady
--

ALTER TABLE ONLY recipes
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

