create table car (
    id      int identity(1,1),
    bin     varchar(30),
    maker   varchar(30),
    model   varchar(30),
    style   varchar(30),
    year    int,
    price   int,
    owner_id int
);