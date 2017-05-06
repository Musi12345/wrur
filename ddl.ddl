




CREATE
  TABLE Client
  (
    c_id INTEGER NOT NULL ,
    c_name NVARCHAR2 (40) ,
    c_address NVARCHAR2 (40) ,
    c_phone_number NVARCHAR2 (40)
  ) ;
ALTER TABLE Client ADD CONSTRAINT Client_PK PRIMARY KEY ( c_id ) ;

CREATE
  TABLE Positions
  (
    p_id INTEGER NOT NULL ,
    p_position NVARCHAR2 (40)
  ) ;
ALTER TABLE Positions ADD CONSTRAINT Positions_PK PRIMARY KEY ( p_id ) ;

CREATE
  TABLE Reservation
  (
    res_id      INTEGER NOT NULL ,
    res_date    DATE ,
    res_by_date DATE ,
    Client_c_id INTEGER NOT NULL ,
    Staff_s_id  INTEGER NOT NULL ,
    Room_r_id   INTEGER NOT NULL
  ) ;
ALTER TABLE Reservation ADD CONSTRAINT Reservation_PK PRIMARY KEY ( res_id ) ;

CREATE
  TABLE Room
  (
    r_id             INTEGER NOT NULL ,
    r_price          INTEGER ,
    Room_Type_r_t_id INTEGER NOT NULL
  ) ;
ALTER TABLE Room ADD CONSTRAINT Room_PK PRIMARY KEY ( r_id ) ;


