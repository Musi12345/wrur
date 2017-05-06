




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

CREATE
  TABLE Room_Type
  (
    r_t_id INTEGER NOT NULL ,
    r_t_type NVARCHAR2 (50)
  ) ;
ALTER TABLE Room_Type ADD CONSTRAINT Room_Type_PK PRIMARY KEY ( r_t_id ) ;

CREATE
  TABLE Staff
  (
    s_id INTEGER NOT NULL ,
    s_name NVARCHAR2 (40) ,
    s_phone_number NVARCHAR2 (40) ,
    Positions_p_id INTEGER NOT NULL
  ) ;
ALTER TABLE Staff ADD CONSTRAINT Staff_PK PRIMARY KEY ( s_id ) ;

ALTER TABLE Reservation ADD CONSTRAINT Reservation_Client_FK FOREIGN KEY (
Client_c_id ) REFERENCES Client ( c_id ) ;

ALTER TABLE Reservation ADD CONSTRAINT Reservation_Room_FK FOREIGN KEY (
Room_r_id ) REFERENCES Room ( r_id ) ;

ALTER TABLE Reservation ADD CONSTRAINT Reservation_Staff_FK FOREIGN KEY (
Staff_s_id ) REFERENCES Staff ( s_id ) ;

ALTER TABLE Room ADD CONSTRAINT Room_Room_Type_FK FOREIGN KEY (
Room_Type_r_t_id ) REFERENCES Room_Type ( r_t_id ) ;

ALTER TABLE Staff ADD CONSTRAINT Staff_Positions_FK FOREIGN KEY (
Positions_p_id ) REFERENCES Positions ( p_id ) ;
