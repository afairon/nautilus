-- account_t definition

-- Drop type

-- DROP TYPE account_t;

CREATE TYPE account_t as ENUM ('ADMIN','AGENCY','DIVER');

-- gender_t definition

-- Drop type

-- DROP TYPE gender_t;

CREATE TYPE gender_t as ENUM ('FEMALE','MALE');

-- level_t definition

-- Drop type

-- DROP TYPE level_t;

CREATE TYPE level_t as ENUM ('INSTRUCTOR','MASTER','RESCUE','ADVANCED_OPEN_WATER','OPEN_WATER');

-- trip_t definition

-- Drop type

-- DROP TYPE trip_t;

CREATE TYPE trip_t as ENUM ('ONSHORE','OFFSHORE');

-- public.account definition

-- Drop table

-- DROP TABLE public.account;

CREATE TABLE public.account (
  id bigserial NOT NULL,
  username varchar NOT NULL,
  email varchar NOT NULL,
  "password" varchar NOT NULL,
  "type" account_t NOT NULL,
  verified bool NOT NULL DEFAULT false,
  active bool NOT NULL DEFAULT true,
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT account_pk PRIMARY KEY (id),
  CONSTRAINT email_un UNIQUE (email),
  CONSTRAINT username_un UNIQUE (username)
);

-- public.address definition

-- Drop table

-- DROP TABLE public.address;

CREATE TABLE public.address (
  id bigserial NOT NULL,
  address_line_1 varchar NOT NULL DEFAULT '',
  address_line_2 varchar NOT NULL DEFAULT '',
  city varchar NOT NULL DEFAULT '',
  postcode varchar NOT NULL DEFAULT '',
  region varchar NOT NULL DEFAULT '',
  country varchar NOT NULL DEFAULT '',
  CONSTRAINT address_pk PRIMARY KEY (id)
);

-- public.agency definition

-- Drop table

-- DROP TABLE public.agency;

CREATE TABLE public.agency (
  id bigserial NOT NULL,
  "name" varchar NOT NULL,
  phone varchar NOT NULL DEFAULT '',
  account_id bigint NOT NULL,
  address_id bigint NOT NULL,
  documents varchar[],
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT agency_account_un UNIQUE (account_id),
  CONSTRAINT agency_pk PRIMARY KEY (id),
  CONSTRAINT agency_un UNIQUE (name)
);


-- public.agency foreign keys

ALTER TABLE public.agency ADD CONSTRAINT agency_account_fk FOREIGN KEY (account_id) REFERENCES public.account(id);
ALTER TABLE public.agency ADD CONSTRAINT agency_address_fk FOREIGN KEY (address_id) REFERENCES public.address(id);

-- public.diver definition

-- Drop table

-- DROP TABLE public.diver;

CREATE TABLE public.diver (
  id bigserial NOT NULL,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL,
  phone varchar NOT NULL DEFAULT '',
  birth_date date NOT NULL,
  "level" level_t NOT NULL,
  account_id bigint NOT NULL,
  documents varchar[],
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT diver_account_un UNIQUE (account_id),
  CONSTRAINT diver_pk PRIMARY KEY (id),
  CONSTRAINT diver_un UNIQUE (first_name, last_name, phone)
);


-- public.diver foreign keys

ALTER TABLE public.diver ADD CONSTRAINT diver_fk FOREIGN KEY (account_id) REFERENCES public.account(id);

-- public.staff definition

-- Drop table

-- DROP TABLE public.staff;

CREATE TABLE public.staff (
  id bigserial NOT NULL,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL,
  "position" varchar NOT NULL,
  gender gender_t NOT NULL,
  agency_id bigint NOT NULL,
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT staff_pk PRIMARY KEY (id)
);


-- public.staff foreign keys

ALTER TABLE public.staff ADD CONSTRAINT staff_fk FOREIGN KEY (agency_id) REFERENCES public.agency(id);

-- public.hotel definition

-- Drop table

-- DROP TABLE public.hotel;

CREATE TABLE public.hotel (
  id bigserial NOT NULL,
  "name" varchar NOT NULL,
  description text NOT NULL DEFAULT '',
  star smallint,
  phone varchar NOT NULL DEFAULT '',
  agency_id bigint NOT NULL,
  address_id bigint NOT NULL,
  images varchar[],
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT hotel_pk PRIMARY KEY (id),
  CONSTRAINT hotel_un UNIQUE (name, agency_id)
);


-- public.hotel foreign keys

ALTER TABLE public.hotel ADD CONSTRAINT hotel_address_fk FOREIGN KEY (address_id) REFERENCES public.address(id);
ALTER TABLE public.hotel ADD CONSTRAINT hotel_agency_fk FOREIGN KEY (agency_id) REFERENCES public.agency(id);

-- public.liveaboard definition

-- Drop table

-- DROP TABLE public.liveaboard;

CREATE TABLE public.liveaboard (
  id bigserial NOT NULL,
  "name" varchar NOT NULL,
  description varchar NOT NULL DEFAULT '',
  length real,
  width real,
  agency_id bigint NOT NULL,
  images varchar[],
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT liveaboard_pk PRIMARY KEY (id),
  CONSTRAINT liveaboard_un UNIQUE (name, agency_id)
);


-- public.liveaboard foreign keys

ALTER TABLE public.liveaboard ADD CONSTRAINT liveaboard_fk FOREIGN KEY (agency_id) REFERENCES public.agency(id);

-- public.amenity definition

-- Drop table

-- DROP TABLE public.amenity;

CREATE TABLE public.amenity (
  id serial NOT NULL,
  "name" varchar NOT NULL,
  description text NOT NULL DEFAULT '',
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT amenity_pk PRIMARY KEY (id),
  CONSTRAINT amenity_un UNIQUE (name)
);

-- public.room_type definition

-- Drop table

-- DROP TABLE public.room_type;

CREATE TABLE public.room_type (
  id bigserial NOT NULL,
  "name" varchar NOT NULL,
  description varchar NOT NULL DEFAULT '',
  max_guest smallint NOT NULL,
  price real NOT NULL,
  quantity integer NOT NULL,
  hotel_id bigint,
  liveaboard_id bigint,
  images varchar[],
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT room_type_check CHECK (((max_guest > 0) AND (price >= (0)::double precision) AND (quantity >= 0))),
  CONSTRAINT room_type_pk PRIMARY KEY (id),
  CONSTRAINT room_type_un UNIQUE (name, hotel_id, liveaboard_id)
);


-- public.room_type foreign keys

ALTER TABLE public.room_type ADD CONSTRAINT room_type_hotel_fk FOREIGN KEY (hotel_id) REFERENCES public.hotel(id);
ALTER TABLE public.room_type ADD CONSTRAINT room_type_liveaboard_fk FOREIGN KEY (liveaboard_id) REFERENCES public.liveaboard(id);

-- public.room_amenity_link definition

-- Drop table

-- DROP TABLE public.room_amenity_link;

CREATE TABLE public.room_amenity_link (
  id bigserial NOT NULL,
  room_type_id bigint NOT NULL,
  amenity_id bigint NOT NULL,
  CONSTRAINT room_amenity_link_pk PRIMARY KEY (id),
  CONSTRAINT room_amenity_link_un UNIQUE (room_type_id, amenity_id)
);


-- public.room_amenity_link foreign keys

ALTER TABLE public.room_amenity_link ADD CONSTRAINT room_amenity_link_amenity_fk FOREIGN KEY (amenity_id) REFERENCES public.amenity(id);
ALTER TABLE public.room_amenity_link ADD CONSTRAINT room_amenity_link_room_fk FOREIGN KEY (room_type_id) REFERENCES public.room_type(id);

-- public.boat definition

-- Drop table

-- DROP TABLE public.boat;

CREATE TABLE public.boat (
  id bigserial NOT NULL,
  "name" varchar NOT NULL,
  agency_id bigint NOT NULL,
  images varchar[],
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT boat_pk PRIMARY KEY (id),
  CONSTRAINT boat_un UNIQUE (name, agency_id)
);


-- public.boat foreign keys

ALTER TABLE public.boat ADD CONSTRAINT boat_fk FOREIGN KEY (agency_id) REFERENCES public.agency(id);

-- public.trip_template definition

-- Drop table

-- DROP TABLE public.trip_template;

CREATE TABLE public.trip_template (
  id bigserial NOT NULL,
  "name" varchar NOT NULL,
  description varchar NOT NULL DEFAULT '',
  "type" trip_t NOT NULL,
  agency_id bigint NOT NULL,
  hotel_id bigint,
  boat_id bigint,
  liveaboard_id bigint,
  images varchar[],
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT template_pk PRIMARY KEY (id),
  CONSTRAINT template_un UNIQUE (name, agency_id)
);


-- public.trip_template foreign keys

ALTER TABLE public.trip_template ADD CONSTRAINT trip_template_agency_fk FOREIGN KEY (agency_id) REFERENCES public.agency(id);
ALTER TABLE public.trip_template ADD CONSTRAINT trip_template_boat_fk FOREIGN KEY (boat_id) REFERENCES public.boat(id);
ALTER TABLE public.trip_template ADD CONSTRAINT trip_template_hotel_fk FOREIGN KEY (hotel_id) REFERENCES public.hotel(id);
ALTER TABLE public.trip_template ADD CONSTRAINT trip_template_liveaboard_fk FOREIGN KEY (liveaboard_id) REFERENCES public.liveaboard(id);

-- public.trip definition

-- Drop table

-- DROP TABLE public.trip;

CREATE TABLE public.trip (
  id bigserial NOT NULL,
  template_id bigint NOT NULL,
  agency_id bigint NOT NULL,
  max_guest smallint NOT NULL,
  price real NOT NULL,
  from_date timestamp with time zone NOT NULL,
  to_date timestamp with time zone NOT NULL,
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT trip_check CHECK (((max_guest > 0) AND (price >= (0)::double precision) AND (from_date < to_date))),
  CONSTRAINT trip_pk PRIMARY KEY (id),
  CONSTRAINT trip_un UNIQUE (template_id, from_date, to_date)
);


-- public.trip foreign keys

ALTER TABLE public.trip ADD CONSTRAINT trip_agency_fk FOREIGN KEY (agency_id) REFERENCES public.agency(id);
ALTER TABLE public.trip ADD CONSTRAINT trip_template_fk FOREIGN KEY (template_id) REFERENCES public.trip_template(id);

-- public.dive_master definition

-- Drop table

-- DROP TABLE public.dive_master;

CREATE TABLE public.dive_master (
  id bigserial NOT NULL,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL,
  "level" level_t NOT NULL,
  agency_id bigint,
  trip_id bigint,
  documents varchar[],
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT dive_master_pk PRIMARY KEY (id),
  CONSTRAINT dive_master_un UNIQUE (first_name, last_name, trip_id)
);


-- public.dive_master foreign keys

ALTER TABLE public.dive_master ADD CONSTRAINT dive_master_agency_fk FOREIGN KEY (agency_id) REFERENCES public.agency(id);
ALTER TABLE public.dive_master ADD CONSTRAINT dive_master_trip_fk FOREIGN KEY (trip_id) REFERENCES public.trip(id);

-- public.reservation definition

-- Drop table

-- DROP TABLE public.reservation;

CREATE TABLE public.reservation (
  id bigserial NOT NULL,
  trip_id bigint NOT NULL,
  diver_id bigint NOT NULL,
  price real NOT NULL,
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT reservation_pk PRIMARY KEY (id),
  CONSTRAINT reservation_un UNIQUE (trip_id, diver_id)
);


-- public.reservation foreign keys

ALTER TABLE public.reservation ADD CONSTRAINT reservation_diver_fk FOREIGN KEY (diver_id) REFERENCES public.diver(id);
ALTER TABLE public.reservation ADD CONSTRAINT reservation_trip_fk FOREIGN KEY (trip_id) REFERENCES public.trip(id);

-- public.booked_room definition

-- Drop table

-- DROP TABLE public.booked_room;

CREATE TABLE public.booked_room (
  id bigserial NOT NULL,
  room_type_id bigint NOT NULL,
  reservation_id bigint NOT NULL,
  no_adults smallint NOT NULL,
  no_kids smallint NOT NULL,
  quantity smallint NOT NULL,
  CONSTRAINT booked_room_check CHECK (((no_adults > 0) AND (no_kids >= 0) AND (quantity > 0))),
  CONSTRAINT booked_room_pk PRIMARY KEY (id)
);


-- public.booked_room foreign keys

ALTER TABLE public.booked_room ADD CONSTRAINT booked_room_reservation_fk FOREIGN KEY (reservation_id) REFERENCES public.reservation(id);
ALTER TABLE public.booked_room ADD CONSTRAINT booked_room_type_fk FOREIGN KEY (room_type_id) REFERENCES public.room_type(id);

-- public.trip_comment definition

-- Drop table

-- DROP TABLE public.trip_comment;

CREATE TABLE public.trip_comment (
  id bigserial NOT NULL,
  "comment" text NOT NULL,
  star smallint,
  reservation_id bigint NOT NULL,
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT trip_comment_pk PRIMARY KEY (id),
  CONSTRAINT trip_comment_un UNIQUE (reservation_id)
);


-- public.trip_comment foreign keys

ALTER TABLE public.trip_comment ADD CONSTRAINT trip_comment_fk FOREIGN KEY (reservation_id) REFERENCES public.reservation(id);

-- public.hotel_comment definition

-- Drop table

-- DROP TABLE public.hotel_comment;

CREATE TABLE public.hotel_comment (
  id bigserial NOT NULL,
  "comment" text NOT NULL,
  star smallint,
  reservation_id bigint NOT NULL,
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT hotel_comment_pk PRIMARY KEY (id),
  CONSTRAINT hotel_comment_un UNIQUE (reservation_id)
);


-- public.hotel_comment foreign keys

ALTER TABLE public.hotel_comment ADD CONSTRAINT hotel_comment_fk FOREIGN KEY (reservation_id) REFERENCES public.reservation(id);

-- public.liveaboard_comment definition

-- Drop table

-- DROP TABLE public.liveaboard_comment;

CREATE TABLE public.liveaboard_comment (
  id bigserial NOT NULL,
  "comment" text NOT NULL,
  star smallint,
  reservation_id bigint NOT NULL,
  created_on timestamp with time zone NOT NULL DEFAULT now(),
  updated_on timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT liveaboard_comment_pk PRIMARY KEY (id),
  CONSTRAINT liveaboard_comment_un UNIQUE (reservation_id)
);


-- public.liveaboard_comment foreign keys

ALTER TABLE public.liveaboard_comment ADD CONSTRAINT liveaboard_comment_fk FOREIGN KEY (reservation_id) REFERENCES public.reservation(id);
