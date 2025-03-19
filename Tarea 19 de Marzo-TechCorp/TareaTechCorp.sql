create database TechCorp;

use TechCorp;

create table Empleado (
nombre varchar (30) primary key,
apellido varchar (30) Not Null,
edad int Not Null,
salario int Not null,
departamento varchar (12) Not Null,
contratacion date Not Null,
estado bool Not Null
);

/*Lista de Empleados*/

insert into Empleado values ('Juan', 'García', 28, 35000, 'Ventas', '2020-05-15', true);
insert into Empleado values ('María', 'López', 34, 42000, 'Recursos', '2018-09-22', true);
insert into Empleado values ('Carlos', 'Martínez', 45, 50000, 'Tecnología', '2015-03-10', true);
insert into Empleado values ('Ana', 'Rodríguez', 29, 37000, 'Marketing', '2019-07-30', true);
insert into Empleado values ('Luis', 'Fernández', 38, 48000, 'Finanzas', '2016-11-05', true);
insert into Empleado values ('Sofía', 'Gómez', 27, 33000, 'Ventas', '2021-02-18', true);
insert into Empleado values ('Pedro', 'Díaz', 31, 39000, 'Recursos', '2017-08-12', true);
insert into Empleado values ('Laura', 'Pérez', 40, 52000, 'Tecnología', '2014-06-25', true);
insert into Empleado values ('Jorge', 'Sánchez', 33, 41000, 'Marketing', '2018-04-20', true);
insert into Empleado values ('Marta', 'Romero', 26, 32000, 'Finanzas', '2022-01-10', true);
insert into Empleado values ('Diego', 'Alvarez', 36, 47000, 'Ventas', '2016-03-15', true);
insert into Empleado values ('Elena', 'Torres', 30, 38000, 'Recursos', '2019-09-05', true);
insert into Empleado values ('Pablo', 'Navarro', 42, 51000, 'Tecnología', '2013-12-01', true);
insert into Empleado values ('Claudia', 'Jiménez', 28, 34000, 'Marketing', '2020-08-22', true);
insert into Empleado values ('Raúl', 'Ruiz', 37, 49000, 'Finanzas', '2015-05-18', true);
insert into Empleado values ('Isabel', 'Serrano', 29, 36000, 'Ventas', '2021-06-30', true);
insert into Empleado values ('Alberto', 'Molina', 39, 50000, 'Recursos', '2017-02-14', true);
insert into Empleado values ('Carmen', 'Ortega', 44, 53000, 'Tecnología', '2012-10-10', true);
insert into Empleado values ('Fernando', 'Gutiérrez', 32, 40000, 'Marketing', '2018-11-25', true);
insert into Empleado values ('Natalia', 'Vega', 27, 33000, 'Finanzas', '2022-03-05', true);
insert into Empleado values ('Hugo', 'Cruz', 35, 46000, 'Ventas', '2016-07-20', true);
insert into Empleado values ('Silvia', 'Reyes', 31, 39000, 'Recursos', '2019-04-15', true);
insert into Empleado values ('Ricardo', 'Morales', 41, 52000, 'Tecnología', '2014-01-30', true);
insert into Empleado values ('Patricia', 'Flores', 28, 35000, 'Marketing', '2020-09-12', true);
insert into Empleado values ('Oscar', 'Herrera', 36, 48000, 'Finanzas', '2015-08-08', true);
insert into Empleado values ('Lucía', 'Santos', 30, 37000, 'Ventas', '2021-03-22', true);
insert into Empleado values ('Manuel', 'Castro', 38, 49000, 'Recursos', '2016-12-10', true);
insert into Empleado values ('Rosa', 'Guerrero', 43, 54000, 'Tecnología', '2011-05-18', true);
insert into Empleado values ('Sergio', 'Luna', 33, 41000, 'Marketing', '2018-06-25', true);
insert into Empleado values ('Teresa', 'Ramos', 29, 36000, 'Finanzas', '2022-05-15', true);
insert into Empleado values ('Andrés', 'Medina', 34, 45000, 'Ventas', '2017-09-30', true);
insert into Empleado values ('Beatriz', 'Vargas', 32, 40000, 'Recursos', '2019-02-20', true);
insert into Empleado values ('Javier', 'Campos', 40, 51000, 'Tecnología', '2013-07-12', true);
insert into Empleado values ('Alicia', 'Fuentes', 27, 34000, 'Marketing', '2021-10-05', true);
insert into Empleado values ('Víctor', 'Ríos', 37, 47000, 'Finanzas', '2015-04-25', true);
insert into Empleado values ('Diana', 'Soto', 31, 38000, 'Ventas', '2020-01-18', true);
insert into Empleado values ('Roberto', 'Aguilar', 39, 50000, 'Recursos', '2016-08-15', true);
insert into Empleado values ('Eva', 'Méndez', 42, 53000, 'Tecnología', '2012-03-22', true);
insert into Empleado values ('Francisco', 'Rosas', 35, 44000, 'Marketing', '2017-11-10', true);
insert into Empleado values ('Marina', 'Ochoa', 30, 37000, 'Finanzas', '2022-07-30', true);

/*Altos Ingresos*/

select nombre from Empleado where salario >=4000;

/*Fuerza de Ventas*/

select * from Empleado where departamento = 'Ventas';

/*Rango de edad*/

select * from Empleado where edad >=30 and edad <= 40;

/*Nuevas Contrataciones*/

select * from Empleado where contratacion >='2020-01-01';

/*Distribucion de empleados*/

select * from Empleados where departamento = 'Ventas' group by departamento;
select * from Empleados where departamento = 'Recursos' group by departamento;
select * from Empleados where departamento = 'Tecnología' group by departamento;
select * from Empleados where departamento = 'Marketing' group by departamento;
select * from Empleados where departamento = 'Finanzas' group by departamento;

/*Analisis Salarial*/

select * from Empleados where salario group by salario / 40;

/*Nombres Selectivos*/

select * from Empleado where nombre like 'A%';

select * from Empleado where nombre like 'C%';

/*Departamentos Especificos*/

select * from Empleados where not departamento = 'Tecnología' group by departamento;

/*El Mejor Pagado*/

select * from Empleados where salario group by salario Asc;