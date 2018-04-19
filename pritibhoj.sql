create table notification(id serial primary key, 
user_id int,
notification_type varchar(50),
notification_text text, 
notitification_link varchar(50),
creation_time timestamp default current_timestamp
);

create table forget(id serial primary key,
user_id int,
key varchar(20),
creation_time timestamp default current_timestamp
);

create table phone_verification(id serial primary key,
user_id varchar(50),
phone_no varchar(50), 
key_code varchar(50),
creation_time timestamp default current_timestamp,
is_verified boolean,
is_active boolean
);

create table user_info(id serial  primary key,
email varchar(50), 
date_joined timestamp default current_timestamp,
first_name varchar(50), 
is_active boolean,
is_staff boolean, 
is_superuser boolean, 
last_login timestamp default current_timestamp,
username varchar(50), 
password varchar(50)
);

create table address(id serial primary key,
city varchar(50),
state varchar(50)
);

create table email_verification(id serial primary key, 
user_id int,
email varchar(50),
key_code varchar(50), 
creation_time timestamp default current_timestamp,
is_verified boolean, 
is_active boolean
);

create table phone(id serial primary key, 
country_code varchar(20),
number varchar(20) 
);

create table user_profile(id serial primary key, 
user_id int,
about_me text,
is_email_verified bool, 
phone_id int,
is_phone_verified bool,
photo bytea, 
response_rate varchar(50), 
response_time date, 
last_notification_view date
);

create table review (id serial primary key,
venue_id int,
booking bool, 
review text, 
rating_attribute_1 int, 
rating_attribute_2 int, 
rating_attribute_3 int, 
rating_attribute_4 int, 
rating_attribute_5 int
);

create table price_package(id serial primary key,
venue_id int,
user_price real,
final_price real,
payment_id int,
description text,
max_occupancy int,
price_package_type varchar(50),
is_active boolean,
is_available boolean
);

create table payment(id serial primary key,
payment_type varchar(50),
amount real,
payment_date timestamp default current_timestamp,
user_id int
);

create table availability(id serial primary key, 
venue_id int,
price_package_id int,
start_on varchar(50),
end_at varchar(50), 
repeat_until_day varchar(50),
repeat_on_mon boolean,
repeat_on_tue boolean,
repeat_on_wed boolean,
repeat_on_thu boolean,
repeat_on_fri boolean,
repeat_on_sat boolean,
repeat_on_sun boolean
);

create table owner(id serial primary key,
name varchar(50),
phone_no varchar(50),
email varchar(50),
venue_website varchar(150)
);

create table venue(id serial primary key,
name varchar(50),
owner_id int,
address_id int,
photo bytea,
short_desc text,
description text,
music_desc text,
food_desc text,
drinks_desc text,
capacity int,
capacity_desc text,
accessibility_desc text,
longtitude varchar(20),
latitude varchar(20),
directions varchar(100),
venue_rules text,
is_live boolean,
is_active boolean
);

create table venue_extra_photos(id serial primary key,
photo bytea
);


Alter table availability add foreign key(price_package_id) references price_package(id);


Alter table review add foreign key(venue_id) references venue(id);

Alter table notification add foreign key(user_id) references user_info(id);

Alter table forget add foreign key(user_id) references user_info(id);

Alter table phone_verification add foreign key(user_id) references user_info(id);

Alter table email_verification add foreign key(user_id) references user_info(id);

Alter table user_profile add foreign key(user_id) references user_info(id);

Alter table user_profile add foreign key(phone_id) references phone(id);


Alter table venue add foreign key(address_id) references address(id);

Alter table venue add foreign key(owner_id) references owner(id);

Alter table availability add foreign key(venue_id) references venue(id);

