USE RCM_db;

INSERT INTO department (dep_name)
    VALUES ("NRCM"),
           ("ERCM");

 
INSERT INTO role_list (rank, salary, dep_id)
    VALUES ( "Lieutenant", "(✤) 7,700", 1),
           ( "Patrol Officer", "(✤) 5,395", 2),
           ( "Civilian Consultant", "(✤) 6,200", 1),
           ("Lt. Double Yefreitor", "(✤) 8,700", 2);
        
INSERT INTO employees (first_name, last_name, role_id, supervisor_id )
    VALUES ("Major Crimes Unit", "John, Vicquemare", 1, NULL),
           ("Major Crimes Unit", "Judit", "Minot", 2, 1), 
           ("Major Crimes Unit", "Trant", "Heidelstam", 3,1 ),
           ("Major Crimes Unit", "Harry", "DuBois",  4, 1);
