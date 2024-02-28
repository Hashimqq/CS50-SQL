create table
	Ingredients (
    id integer,
    name text,
    price_per_unit real,
    unit text,

    primary key (id)
    );


create table
	Donuts (
    id integer,
    name text,
    is_gluten_free boolean,
    price real,

    primary key (id)
    );


create table
	DonutIngredients (
    donut_id integer,
    ingredients_id integer,

    primary key (donut_id, ingredients_id),
    foreign key (donut_id) references Donuts(id),
    foreign key (ingredients_id) references Ingredients(id)
    );


create table
	Customers (
    id integer,
    first_name text,
    last_name text,

    primary key (id)
    );


create table
	Orders (
    id integer,
    customer_id integer,

    primary key (id),
    foreign key (customer_id) references Customers(id)
    );


create table
	OrderDonuts (
    order_id integer,
    donut_id integer,
		quantity integer,

    primary key (order_id, donut_id),
    foreign key (order_id) references Orders(id),
    foreign key (donut_id) references Donuts(id)
    );
















