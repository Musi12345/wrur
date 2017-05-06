




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
