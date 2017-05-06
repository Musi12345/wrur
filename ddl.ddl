




CREATE
  TABLE Client
  (
    c_id INTEGER NOT NULL ,
    c_name NVARCHAR2 (40) ,
    c_address NVARCHAR2 (40) ,
    c_phone_number NVARCHAR2 (40)
  ) ;
ALTER TABLE Client ADD CONSTRAINT Client_PK PRIMARY KEY ( c_id ) ;


