create database if not exists football

create role football_admin with login password 'admin'

grant all privileges on database football to football_admin

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE standings to football_admin

create table standings (


create table standings (
         
    rank INT NOT NULL,    
	league_id INT NOT NULL,          
    name VARCHAR(255) NOT NULL Primary key, 
    pts INT NOT NULL,            
    played INT NOT NULL,             
    wins INT NOT NULL,               
    draws INT NOT NULL,       
    losses INT NOT NULL,           
    goals_for INT NOT NULL,          
    goals_against INT NOT NULL,    
    goals_diff INT NOT NULL,       
    UNIQUE (league_id, rank)   
)
select * from standings 