import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; 



var carreras = [
  DropdownMenuItem(
    value: "Ingenieria en Sistemas Computacionales",
    child: Text('Ingenieria en Sistemas Computacionales'),
  ),
  DropdownMenuItem(
    value: "Ingenieria en Mecatronica",
    child: Text('Ingenieria en Mecatronica'),
  ),
  DropdownMenuItem(
    value: "Ingenieria en Alimentos",
    child: Text('Ingenieria en Alimentos'),
  ),
  DropdownMenuItem(
    value: "Ingenieria Ambiental",
    child: Text('Ingenieria Ambiental'),
  ),
  DropdownMenuItem(
    value: "Ingenieria en Metalurgia",
    child: Text('Ingenieria en Metalurgia'),
  ),
];


var instituciones = [
  DropdownMenuItem(
        value: "1",
       child:  Text("Preparatoria Independencia de Rio Grande"
       
       
     ),),
      DropdownMenuItem(
        value: "2",
       child:  Text("Juana de Arco"
       
       
     ),),
      DropdownMenuItem(
        value: "3",
       child:  Text("Colegio del Centro"
        
       
     ),),
      DropdownMenuItem(
        value: "4",
       child:  Text("Escuela Prep Instituto Zacatecas"
        
       
     ),),
      DropdownMenuItem(
        value: "5",
       child:  Text("Instituto Tecnologico y de Estudios Superiores de Monterrey Campus Zacatecas"
       
     ),),
      DropdownMenuItem(
        value: "6",
       child:  Text("Preparatoria UAF"
        
     ),),
      DropdownMenuItem(
        value: "7",
       child:  Text("Preparatoria Vetagrande"
       
     ),),
      DropdownMenuItem(
        value: "8",
       child:  Text("Instituto Pedagogico J. Peaget"
        
     ),),
  
      DropdownMenuItem(
        
        value: "9",
       child:  Text("Instituto Educativo de Zacatecas"
     
     ),),
      DropdownMenuItem(
        
        value: "10",
       child:  Text("Colegio Federico Froebel"
       
     ),),
      DropdownMenuItem(
        
        value: "11",
       child:  Text("Centro Escolar Lancaster de Zacatecas"
        
     ),),
      DropdownMenuItem(
        
        value: "12",
       child:  Text("Universidad Autonoma de Durango Campus Zacatecas"
        
     ),),
      DropdownMenuItem(
        
        value: "13",
       child:  Text("Lic. Jose Minero Roque"
       
     ),),
      DropdownMenuItem(
        
        value: "14",
       child:  Text("Preparatoria Comercial Sor Juana Ines de La Cruz"
       
     ),),
      DropdownMenuItem(
        
        value: "15",
       child:  Text("Academia Comercial Remington"
        
     ),),
      DropdownMenuItem(
        
        value: "16",
       child:  Text("Preparatoria San Matias"
    
     ),),
      DropdownMenuItem(
        
        value: "17",
       child:  Text("Instituto Maxwell"
        
     ),),
      DropdownMenuItem(
        
        value: "18",
       child:  Text("Colegio Juan Pablo Ii"
       
     ),),
      DropdownMenuItem(
        
        value: "19",
       child:  Text("Colegio Daniel Marquez Medina A.C."
       
     ),),
      DropdownMenuItem(
        
        value: "20",
       child:  Text("Colegio Santa Elena"
       
     ),),
      DropdownMenuItem(
        
        value: "21",
       child:  Text("Instituto de Formacion Integral de Zacatecas"
       
     ),),
      DropdownMenuItem(
        
        value: "22",
       child:  Text("Escuela Preparatoria Particular Ramon  Lopez Velarde"
       
     ),),
      DropdownMenuItem(
        
        value: "23",
       child:  Text("Instituto Ausubel"
      
     ),),
      DropdownMenuItem(
        
        value: "24",
       child:  Text("Instituto Educativo Nochistlan"
       
     ),),
      DropdownMenuItem(
        
        value: "25",
       child:  Text("Liceo E.S.L. Guadalupe"
    
     ),),
      DropdownMenuItem(
        
        value: "26",
       child:  Text("Liceo Universitario Guadalupe"
      
     ),),
      DropdownMenuItem(
        
        value: "27",
       child:  Text("Instituto del Carmen de Guadalupe"
    
     ),),
      DropdownMenuItem(
        
        value: "28",
       child:  Text("Instituto de Educacion MONREAL Sandoval"
      
     ),),
      DropdownMenuItem(
        
        value: "29",
       child:  Text("CONSEJO Educativo de Zacatecas"
      
     ),),
      DropdownMenuItem(
        
        value: "30",
       child:  Text("Colegio Juan Pablo Ii El Grande"
        
     ),),
      DropdownMenuItem(
        
        value: "31",
       child:  Text("Superior Teaching Preparatoria"
        
     ),),
      DropdownMenuItem(
        
        value: "32",
       child:  Text("Bachillerato General Sierra Madre"
        
     ),),
      DropdownMenuItem(
        
        value: "33",
       child:  Text("Instituto Educativo de Calera"
        
     ),),
      DropdownMenuItem(
        
        value: "34",
       child:  Text("Instituto Asis de Guadalupe"
        
     ),),
      DropdownMenuItem(
        
        value: "35",
       child:  Text("Colegio Rio Grande"
       
     ),),
      DropdownMenuItem(
        
        value: "36",
       child:  Text("Instituto Edison Ac"
 
     ),),
      DropdownMenuItem(
        
        value: "37",
       child:  Text("Cultura  Educacion de Fresnillo Asociacion Civil"
  
     ),),
      DropdownMenuItem(
        
        value: "38",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
  
     ),),
      DropdownMenuItem(
        
        value: "39",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
  
     ),),
      DropdownMenuItem(
        
        value: "40",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "41",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
   
     ),),
      DropdownMenuItem(
        
        value: "42",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "43",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
 
     ),),
      DropdownMenuItem(
        
        value: "44",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
    
     ),),
      DropdownMenuItem(
        
        value: "45",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "46",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
   
     ),),
      DropdownMenuItem(
        
        value: "47",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
 
     ),),
      DropdownMenuItem(
        
        value: "48",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
       
     ),),
      DropdownMenuItem(
        
        value: "49",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
        
     ),),
      DropdownMenuItem(
        
        value: "50",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "51",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
     
     ),),
      DropdownMenuItem(
        
        value: "52",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
      
     ),),
      DropdownMenuItem(
        
        value: "53",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "54",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
   
     ),),
      DropdownMenuItem(
        
        value: "55",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
      
     ),),
      DropdownMenuItem(
        
        value: "56",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "57",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
  
     ),),
      DropdownMenuItem(
        
        value: "58",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
 
     ),),
      DropdownMenuItem(
        
        value: "59",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
  
     ),),
      DropdownMenuItem(
        
        value: "60",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
    
     ),),
     DropdownMenuItem(
        
        value: "61",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
 
     ),),
      DropdownMenuItem(
        
        value: "62",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
  
     ),),
      DropdownMenuItem(
        
        value: "63",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
    
     ),),
      DropdownMenuItem(
        
        value: "64",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "65",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
  
     ),),
      DropdownMenuItem(
        
        value: "66",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "67",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "68",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "69",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "70",
       child:  Text("El Cazadero"

     ),),
      DropdownMenuItem(
        
        value: "71",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "72",
       child:  Text("Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "73",
       child:  Text("Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "74",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "75",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
 
     ),),
      DropdownMenuItem(
        
        value: "76",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"
 
     ),),
      DropdownMenuItem(
        
        value: "77",
       child:  Text("Centro de Servicios de Educacion Media Superior A Distancia"

     ),),
      DropdownMenuItem(
        
        value: "78",
       child:  Text("Profr. Jose Santos Valdez"

     ),),
      DropdownMenuItem(
        
        value: "79",
       child:  Text("Lic. Mauricio Magdaleno"

     ),),
      DropdownMenuItem(
        
        value: "80",
       child:  Text("Jose G Montes"

     ),),
      DropdownMenuItem(
        
        value: "81",
       child:  Text("Profa. Ma de La O Marin Mota"

     ),),
      DropdownMenuItem(
        
        value: "82",
       child:  Text("Francisco Garcia Salinas"

     ),),
      DropdownMenuItem(
        
        value: "83",
       child:  Text("Escuela Preparatoria Jose Rodriguez Elias"
 
     ),),
      DropdownMenuItem(
        
        value: "84",
       child:  Text("Valentin Gomez Farias"

     ),),
      DropdownMenuItem(
        
        value: "85",
       child:  Text("Prof. Salvador Vidal G"

     ),),
      DropdownMenuItem(
        
        value: "86",
       child:  Text("Gonzalez Ortega"

     ),),
      DropdownMenuItem(
        
        value: "87",
       child:  Text("Ing.  Gral. Felipe B. Berriozabal"

     ),),
      DropdownMenuItem(
        
        value: "88",
       child:  Text("Gral Lazaro Cardenas"

     ),),
      DropdownMenuItem(
        
        value: "89",
       child:  Text("Victor Rosales"

     ),),
      DropdownMenuItem(
        
        value: "90",
       child:  Text("Preparatoria Villanueva"
    
     ),),
      DropdownMenuItem(
        
        value: "91",
       child:  Text("Candelario Huizar"
     
     ),),
      DropdownMenuItem(
        
        value: "92",
       child:  Text("Panfilo Natera"
     
     ),),
      DropdownMenuItem(
        
        value: "93",
       child:  Text("Lazaro Cardenas del Rio"
    
     ),),
      DropdownMenuItem(
        
        value: "94",
       child:  Text("Jose Vasconcelos"
      
     ),),
      DropdownMenuItem(
        
        value: "95",
       child:  Text("Beatriz Marquez Acosta"

     ),),
      DropdownMenuItem(
        
        value: "96",
       child:  Text("Ramon  Lopez Velarde"
      
     ),),
      DropdownMenuItem(
        
        value: "97",
       child:  Text("Adolfo Lopez Mateos"
   
     ),),
      DropdownMenuItem(
        
        value: "98",
       child:  Text("Jaime Torres Bodet"
      
     ),),
      DropdownMenuItem(
        
        value: "99",
       child:  Text("Tayahua"
    
     ),),
      DropdownMenuItem(
        
        value: "100",
       child:  Text("Genaro Codina"
    
     ),),
      DropdownMenuItem(
        
        value: "101",
       child:  Text("Lic. Agustin Yañez"
    
     ),),
      DropdownMenuItem(
        
        value: "102",
       child:  Text("Felix U Gomez"
      
     ),),
      DropdownMenuItem(
        
        value: "103",
       child:  Text("Francisco Goitia"
     
     ),),
      DropdownMenuItem(
        
        value: "104",
       child:  Text("Jesus Reyes Heroles"
       
     ),),
      DropdownMenuItem(
        
        value: "105",
       child:  Text("Daniel Camarena"
    
     ),),
      DropdownMenuItem(
        
        value: "106",
       child:  Text("Genaro Codina"
       
     ),),
      DropdownMenuItem(
        
        value: "107",
       child:  Text("Eulalio Gutierrez"
       
     ),),
      DropdownMenuItem(
        
        value: "108",
       child:  Text("Salvador Varela Resendiz"
 
     ),),
      DropdownMenuItem(
        
        value: "109",
       child:  Text("Colegio de Bachilleres ZACATECAS"

     ),),
      DropdownMenuItem(
        
        value: "110",
       child:  Text("Colegio de Bachilleres"
 
     ),),
      DropdownMenuItem(
        
        value: "114",
       child:  Text("Colegio de Bachilleres Ojocaliente"

     ),),
      DropdownMenuItem(
        
        value: "115",
       child:  Text("Colegio de Bachilleres Pinos"

     ),),
      DropdownMenuItem(
        
        value: "116",
       child:  Text("Colegio de Bachilleres Sain Alto"

     ),),
      DropdownMenuItem(
        
        value: "117",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "118",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "119",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "120",
       child:  Text("Colegio de Bachilleres"
 
     ),),
     DropdownMenuItem(
        
        value: "121",
       child:  Text("Colegio de Bachilleres"
 
     ),),
      DropdownMenuItem(
        
        value: "122",
       child:  Text("Colegio de Bachilleres Plantel Cañitas de Felipe Pescador"

     ),),
      DropdownMenuItem(
        
        value: "123",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "124",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "125",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "126",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "127",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "128",
       child:  Text("Luis de La Rosa Oteiza"
   
     ),),
      DropdownMenuItem(
        
        value: "129",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "130",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "131",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "132",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "133",
       child:  Text("Colegio de Bachilleres"
 
     ),),
      DropdownMenuItem(
        
        value: "134",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "135",
       child:  Text("Colegio de Bachilleres Plantel Sombrerete"
   
     ),),
      DropdownMenuItem(
        
        value: "136",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "137",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "138",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "139",
       child:  Text("Colegio de Bachilleres Victor Rosales"
 
     ),),
      DropdownMenuItem(
        
        value: "140",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "141",
       child:  Text("Colegio de Bachilleres"

     ),),
      DropdownMenuItem(
        
        value: "142",
       child:  Text("Colegio de Bachilleres Roberto Cabral del Hoyo"
 
     ),),
      DropdownMenuItem(
        
        value: "143",
       child:  Text("Colegio de Bachilleres"
   
     ),),
      DropdownMenuItem(
        
        value: "144",
       child:  Text("Colegio de Bachilleres Plantel EL Fuerte"

     ),),
      DropdownMenuItem(
        
        value: "145",
       child:  Text("Colegio de Bachilleres Plantel Trancoso"

     ),),
      DropdownMenuItem(
        
        value: "146",
       child:  Text("Colegio de Bachilleres Plantel Chaparrosa"

     ),),
      DropdownMenuItem(
        
        value: "147",
       child:  Text("Colegio de Bachilleres Plantel Los Campos"
  
     ),),
      DropdownMenuItem(
        
        value: "148",
       child:  Text("Preparatoria Num. 1"
 
     ),),
      DropdownMenuItem(
        value: "149",
        child:  Text("Preparatoria Num. 1"
     
     ),),
      DropdownMenuItem(
        
        value: "150",
       child:  Text("Preparatoria Num. 2"
       
     ),),
      DropdownMenuItem(
        
        value: "151",
       child:  Text("Preparatoria Num. 2"
       
     ),),
      DropdownMenuItem(
        
        value: "152",
       child:  Text("Preparatoria Num. 3"
       
     ),),
      DropdownMenuItem(
        
        value: "153",
       child:  Text("Preparatoria Num. 3"
       
     ),),
      DropdownMenuItem(
        
        value: "154",
       child:  Text("Preparatoria Num. 4"
      
     ),),
      DropdownMenuItem(
        
        value: "155",
       child:  Text("Preparatoria Num. 4"
       
     ),),
      DropdownMenuItem(
        value: "156",
       child:  Text("Preparatoria Num. 5"
       
     ),),
      DropdownMenuItem(
        
        value: "157",
       child:  Text("Preparatoria Num. 6"
       
     ),),
      DropdownMenuItem(
        
        value: "158",
       child:  Text("Preparatoria Num. 7"
       
     ),),
      DropdownMenuItem(
        
        value: "159",
       child:  Text("Preparatoria Num. 8"
        
     ),),
      DropdownMenuItem(
        
        value: "160",
       child:  Text("Preparatoria Num. 9"
       
     ),),
     DropdownMenuItem(
        
        value: "161",
       child:  Text("Preparatoria Num. 10"
    
     ),),
      DropdownMenuItem(
        
        value: "162",
       child:  Text("Preparatoria Num. 10"
       
     ),),
      DropdownMenuItem(
        
        value: "163",
       child:  Text("Preparatoria Num. 11"
       
     ),),
      DropdownMenuItem(
        
        value: "164",
       child:  Text("Preparatoria Num. 12"
       
     ),),
      DropdownMenuItem(
        
        value: "165",
       child:  Text("Preparatoria Num. 13"
        
     ),),
      DropdownMenuItem(
        
        value: "166",
       child:  Text("Preparatoria Num. 13"
        
     ),),
      DropdownMenuItem(
        
        value: "167",
       child:  Text("Colegio de Estudios Cientificos y Tecnologicos del Estado Plantel  Victor Rosales"
      
     ),),
      DropdownMenuItem(
      
        value: "168",
        child:  Text("Colegio de Estudios Cientificos y Tecnologicos del Estado  Plantel Tlaltenango"
     
     ),),
      DropdownMenuItem(
        
        value: "169",
       child:  Text("Colegio de Estudios Cientificos y Tecnologicos del Estado  Plantel Rio Grande"
        
     ),),
      DropdownMenuItem(
        
        value: "170",
       child:  Text("Cecyte Plantel San Jose de Lourdes"
        
     ),),
      DropdownMenuItem(
        
        value: "171",
       child:  Text("Colegio de Estudios Cientificos y Tecnologicos del Edo."
       
     ),),
      DropdownMenuItem(
        
        value: "172",
       child:  Text("Colegio de Estudios Cientificos y Tecnologicos del Estado"
      
     ),),
      DropdownMenuItem(
        
        value: "173",
       child:  Text("Centro de Estudios Cientificos y Tecnologicos del Estado"
        
     ),),
      DropdownMenuItem(
        
        value: "174",
       child:  Text("Colegio de Estudios Cientificos y Tecnologicos del Estado"
        
     ),),
      DropdownMenuItem(
        
        value: "175",
       child:  Text("Centro de Estudios Tecnologicos Industriales y de Servicios Num.147"
     
     ),),
      DropdownMenuItem(
        
        value: "176",
       child:  Text("Centro de Bachillerato Tecnologicos Industrial y de Servicios Num. 23"
       
     ),),
      DropdownMenuItem(
        
        value: "177",
       child:  Text("Centro de Bachillerato Tecnologicos Industrial y de Servicios Num. 1"
     
     ),),
      DropdownMenuItem(
        
        value: "178",
       child:  Text("Centro de Bachillerato Tecnologicos Industrial y de Servicios Num. 1"
       
     ),),
      DropdownMenuItem(
        
        value: "179",
       child:  Text("Centro de Bachillerato Tecnologicos Industrial y de Servicios Num. 104"
     
     ),),
      DropdownMenuItem(value: "180",
     child:  Text("Centro de Bachillerato Tecnologicos Industrial y de Servicios Num. 141")),
     
      DropdownMenuItem(
        
        value: "181",
       child:  Text("Centro de Bachillerato Tecnologicos Industrial y de Servicios Num. 215"
     
     ),),
      DropdownMenuItem(
        
        value: "182",
       child:  Text("Centro de Bachillerato Tecnologicos Industrial y de Servicios Num. 221"
      
     ),),
      DropdownMenuItem(
        
        value: "183",
       child:  Text("Centro de Estudios Tecnologicos Industriales y de Servicios Num. 113"
      
     ),),
      DropdownMenuItem(
        
        value: "184",
       child:  Text("Centro de Estudios Tecnologicos Industrales y de Servicios Num. 114"
       
     ),),
      DropdownMenuItem(
        
        value: "185",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num. 166"
       
     ),),
      DropdownMenuItem(
        
        value: "186",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num. 137"
        
     ),),
      DropdownMenuItem(
        
        value: "187",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num. 167"
       
     ),),
      DropdownMenuItem(
        
        value: "188",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num. 138"
        
     ),),
      DropdownMenuItem(
        
        value: "189",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num. 188"
       
     ),),
      DropdownMenuItem(
        
        value: "190",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num. 189"
       
     ),),
      DropdownMenuItem(
        
        value: "191",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num. 20"
      
     ),),
      DropdownMenuItem(
        
        value: "192",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num. 88"
      
     ),),
      DropdownMenuItem(
        
        value: "193",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num.285"

     ),),
      DropdownMenuItem(
        
        value: "194",
       child:  Text("Centro de Bachillerato Tecnologico Agropecuario Num.286"
      
     ),),
      DropdownMenuItem(
        
        value: "195",
       child:  Text("Centro de Estudios Cientificos y Tecnologicos del Estado"
    
     ),),
      DropdownMenuItem(
        
        value: "196",
       child:  Text("Centro de Estudios Cientificos y Tecnologicos del Estado"
     
     ),),
      DropdownMenuItem(
        
        value: "197",
       child:  Text("Instituto Universitario Metropolitano"
    
     ),),
      DropdownMenuItem(
        
        value: "198",
       child:  Text("Escuela de Enfermeria  Beatriz Gonzalez Ortega"
       
     ),),
      DropdownMenuItem(
        
        value: "199",
       child:  Text("Colegio de Educacion Profesional Tecnica del Estado de Zacatecas"
       
     ),),
      DropdownMenuItem(
        
        value: "200",
       child:  Text("Colegio de Educacion Profesional Tecnica del Estado de Zacatecas"
      
     ),),
      DropdownMenuItem(
        
        value: "201",
       child:  Text("Colegio de Educacion Profesional Tecnica del Estado de Zacatecas"
       
     ),),
      DropdownMenuItem(
        
        value: "202",
       child:  Text("Centro de Estudios Cientificos y Tecnologicos 18 Zacatecas"
   
     ),),
      DropdownMenuItem(
        value: "203",
       child:  Text("COBAEE"
    
     ),),
      DropdownMenuItem(
        value: "204",
       child:  Text("CECYT 18"
     
     ),),
      DropdownMenuItem(
        value: "205",
       child:  Text(""
      
     ),),
      DropdownMenuItem(
        value: "206",
       child:  Text(""
        
     ),),
      DropdownMenuItem(
        value: "207",
       child:  Text(""
        
     ),),
      DropdownMenuItem(
        value: "208",
       child:  Text(""
        
     ),),
      DropdownMenuItem(
        value: "209",
       child:  Text(""
        
     ),),
      DropdownMenuItem(
        value: "210",
       child:  Text("CECyT 18"
        
     ),),
      DropdownMenuItem(
        value: "211",
       child:  Text("Salvador Varela Resendiz"
      
     ),),
      DropdownMenuItem(
        value: "212",
       child:  Text("INSTITUTO UNIVERSITARIO DEL CENTRO DE MEXICO"
      
     ),),
      DropdownMenuItem(
        value: "213",
       child:  Text("Colegio de bachilleres plantel villa de cos"
      
     ),),
      DropdownMenuItem(
        value: "214",
       child:  Text("Colegio de Bachilleres del estado de Zacatecas plantel 07 ojocali"
      
     ),),
      DropdownMenuItem(
        value: "215",
       child:  Text("Instituto Politecnico Nacional"
       
     ),),
      DropdownMenuItem(
        value: "216",
       child:  Text("CECyTEZ Tlaltenango"
        
     ),),
      DropdownMenuItem(
        value: "217",
       child:  Text("Universidad Autonoma de zacatecas preparatoria #4"
       
     ),),
      DropdownMenuItem(
        value: "218",
       child:  Text("Universidad Autonoma de Zacatecas Plantel IV"
     
     ),),
      DropdownMenuItem(
        value: "219",
       child:  Text("Instituto Miguel Agustin Pro"
        
     ),),
      DropdownMenuItem(
        value: "220",
       child:  Text("Unidad Academica Preparatoria Programa IV"
        
     ),),
      DropdownMenuItem(
        value: "221",
       child:  Text("Universidad Autonoma de Zacatecas Unidad Academica Preparatora 4",
      
     ),),
      DropdownMenuItem(
        value: "222",
       child:  Text("emsad ramon lopez velarde"
       
     ),),
      DropdownMenuItem(
        value: "223",
       child:  Text("EMSaD Ramon Lopez Velarde"
       
     ),),
      DropdownMenuItem(
        value: "224",
       child:  Text("Educacion Media Superior a Distancia \"Ramon Lopez Velarde\""
     
     ),),
      DropdownMenuItem(
        value: "225",
       child:  Text("EMSaD El Rucio"
     
     ),),
      DropdownMenuItem(
        value: "226",
       child:  Text("EMSaD El Rucio"
        
     ),),
      DropdownMenuItem(
        value: "227",
       child:  Text("EMSaD CECYTEZ EL RUCIO VILLA DE COS ZACATECAS"
    
     ),),
      DropdownMenuItem(
        value: "228",
       child:  Text("Escuela preparatoria estatal  Victor Rosales "
       
     ),),
      DropdownMenuItem(
        value: "229",
       child:  Text("Preparatoria Estatal Victor Rosales"
    
     ),),
      DropdownMenuItem(
        value: "230",
       child:  Text("Preparatoria #1 UAZ"
    
     ),),
      DropdownMenuItem(
        value: "231",
       child:  Text("Universidad Autonoma de Zacatecas Programa 1"
       
     ),),
      DropdownMenuItem(
        value: "232",
       child:  Text("Roberto Cabral del Hoyo Cobaez"
       
     ),),
      DropdownMenuItem(
        value: "233",
       child:  Text("univeraidas autonoma de zacatecas programa lV"
      
     ),),
      DropdownMenuItem(
        value: "234",
       child:  Text("Cbta 138"
     
     ),),
      DropdownMenuItem(
        value: "235",
       child:  Text("Cbta 138"
        
     ),),
      DropdownMenuItem(
        value: "236",
       child:  Text("Cbta 138"
        
     ),),
      DropdownMenuItem(
        value: "237",
       child:  Text("Cbta 138"
       
     ),),
      DropdownMenuItem(
        value: "238",
       child:  Text("Universidad Autonoma de Zacatecas programa IV"
        
     ),),
      DropdownMenuItem(
        value: "239",
       child:  Text("Colegio de bachilleres del estado de Zacatecas"
     
     ),),
      DropdownMenuItem(
        value: "240",
       child:  Text("Liceo E.S.L. Guadalupe"

      ))
];

//var bd = new BaseDatos();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Final',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginOrigin(),
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
    );
  }
}

//Todo esto es lo del Login

class LoginOrigin extends StatefulWidget {

  @override
  _LoginOriginState createState() => _LoginOriginState();
}

class _LoginOriginState extends State<LoginOrigin> {

  
  TextEditingController usuario = TextEditingController();
  TextEditingController contrasena = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    
  final size = MediaQuery.of(context).size;

  final fondoMorado =  Container(
    height: size.height  * 0.4,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          Color.fromRGBO(63, 63, 156, 1.0),
          Color.fromRGBO(90, 70, 178, 1.0)
        ]
      )
    ),
  );

  final circulo = Container(
    width: 100.0,
    height: 100.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Color.fromRGBO(225, 225, 225, 0.10)
    ),
  );


//Cuerpo de todo jeje los Widgets
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              fondoMorado,
              Positioned(top: 90.0, left: 30.0, child: circulo,),
              Positioned(top: -40.0, right: -30.0, child: circulo,),
              Positioned(bottom: -50.0, right: -10.0, child: circulo,),
              Positioned(bottom: 120.0, right: 20.0, child: circulo,),
              Positioned(bottom: -50.0, left: -20.0, child: circulo,),
              Positioned(
                bottom: 100.0, 
                left: 100.0, 
                child:Image(image: AssetImage('assets/images/blancologo.png'),height: 150, width: 150,),
              ),
            ],
          ),
          
          SingleChildScrollView(
            child: Column(
              children: <Widget>[

                SafeArea(
                  child: Container(
                    height: 200.0,
                  ),
                ),

                Container(
                  width: size.width * 0.85 ,
                  padding: EdgeInsets.symmetric(vertical: 50.0),
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 3.0,
                        offset: Offset(0.0, 5.0),
                        spreadRadius: 3.0
                        )
                    ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Ingreso', style: TextStyle(fontSize: 20.0),),
                      SizedBox(height: 60.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          controller: usuario,
                          decoration: InputDecoration(
                            icon: Icon(Icons.account_circle, color: Colors.deepPurple,),
                            hintText: 'Usuario',
                            labelText: 'Nombre de usuario'
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          controller: contrasena,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock_outline, color: Colors.deepPurple,),
                            labelText: 'Contraseña'
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      RaisedButton(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                          child: Text('Ingresar'),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        elevation: 0.0 ,
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        onPressed: () async{
                          if(usuario.text != "" && contrasena.text != ""){
                            Usuario u = new Usuario();
                            u.nombre = this.usuario.text;
                            print(u.nombre);
                            u.contrasena = this.contrasena.text;
                            print(u.contrasena);
                            Usuario inicio = await DBProvider.db.getUsuario(u.nombre, u.contrasena);//Enviar inicio a la pagina de secion
                            if(inicio != null){
                              print(inicio.id);
                              print(inicio.nombre);
                              print(inicio.contrasena);
                              print(inicio.correo);
                            Navigator.pop(context);
                              final ruta = MaterialPageRoute(
                                builder: (context) => (EntradaPage(inicio))
                              );
                              Navigator.push(context, ruta);
                            }else{
                              print('Algo no inserto bien');
                            }
                          }else{
                            print('error espacio vacia');
                          }
                        },
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                    child: Text('Registrarse',style: TextStyle(fontSize: 15.0)),
                  ),
                  elevation: 0.0 ,
                  color: Colors.white,
                  textColor: Colors.deepPurple,
                  onPressed:  (){
                    final ruta = MaterialPageRoute(
                    builder: (context) => RegistroOrigin()
                    );
                    Navigator.push(context, ruta); 
                  },
                ),
                SizedBox(height: 100.0,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class RegistroOrigin extends StatefulWidget {

  @override
  _RegistroOriginState createState() => _RegistroOriginState();
}

class _RegistroOriginState extends State<RegistroOrigin> {

  var usuario = TextEditingController();
  var contrasena = TextEditingController();
  var rcontrasena = TextEditingController();
  var correo = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    
  final size = MediaQuery.of(context).size;

  final fondoMorado =  Container(
    height: size.height  * 0.4,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          Color.fromRGBO(63, 63, 156, 1.0),
          Color.fromRGBO(90, 70, 178, 1.0)
        ]
      )
    ),
  );

  final circulo = Container(
    width: 100.0,
    height: 100.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Color.fromRGBO(225, 225, 225, 0.10)
    ),
  );


//Cuerpo de todo jeje los Widgets
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              fondoMorado,
              Positioned(top: 90.0, left: 30.0, child: circulo,),
              Positioned(top: -40.0, right: -30.0, child: circulo,),
              Positioned(bottom: -50.0, right: -10.0, child: circulo,),
              Positioned(bottom: 120.0, right: 20.0, child: circulo,),
              Positioned(bottom: -50.0, left: -20.0, child: circulo,),
              Positioned(
                bottom: 100.0, 
                left: 100.0, 
                child:Image(image: AssetImage('assets/images/blancologo.png'),height: 150, width: 150,),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Container(
                    height: 200.0,
                  ),
                ),
                Container(
                  width: size.width * 0.85 ,
                  padding: EdgeInsets.symmetric(vertical: 50.0),
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 3.0,
                        offset: Offset(0.0, 5.0),
                        spreadRadius: 3.0
                        )
                    ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Registro', style: TextStyle(fontSize: 20.0),),
                      SizedBox(height: 60.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          controller: usuario,
                          decoration: InputDecoration(
                            icon: Icon(Icons.account_circle, color: Colors.deepPurple,),
                            hintText: 'Usuario',
                            labelText: 'Nombre de usuario'
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          controller: correo,
                          decoration: InputDecoration(
                            icon: Icon(Icons.alternate_email, color: Colors.deepPurple,),
                            labelText: 'Correo',
                            hintText: 'Correo',
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          controller: contrasena,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock_outline, color: Colors.deepPurple,),
                            labelText: 'Contraseña'
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          controller: rcontrasena,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock_outline, color: Colors.deepPurple,),
                            labelText: 'Repita la Contraseña',
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      RaisedButton(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                          child: Text('Ingresar'),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        elevation: 0.0 ,
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        onPressed: () async{
                          if(usuario.text!="" && contrasena.text!="" && correo.text!="" && rcontrasena.text!=""){
                            if(contrasena.text == rcontrasena.text){
                              Usuario u = Usuario();
                              u.nombre = usuario.text;
                              u.contrasena = contrasena.text;
                              u.correo = correo.text;
                              int registro = await DBProvider.db.crearUsuario(u);
                              if(registro == 1){print("Registro un valor");}
                              else{print(registro);}
                              showDialog(
                                context: context,
                                builder:(context){
                                  return AlertDialog(
                                    title: Text('Registro Exitoso'),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text('Aceptar'),
                                        onPressed: (){
                                          Navigator.pop(context);
                                          final ruta = MaterialPageRoute(
                                          builder: (context) => LoginOrigin()
                                          );
                                          Navigator.push(context, ruta); 
                                        },
                                      )
                                    ],
                                  );
                                }
                              );
                            }else{
                              showDialog(
                                context: context,
                                builder:(context){
                                  return AlertDialog(
                                    title: Text('Contraseñas diferentes'),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text('Aceptar'),
                                        onPressed: (){
                                          Navigator.pop(context);
                                          final ruta = MaterialPageRoute(
                                          builder: (context) => Registro()
                                          );
                                          Navigator.push(context, ruta); 
                                        },
                                      )
                                    ],
                                  );
                                }
                              );
                            }
                          }else{
                            print('Hay un espacio vacio');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
                                      
      ),
    );
  }
}

class AgregarAspirante extends StatefulWidget {
  AgregarAspirante({Key key}) : super(key: key);

  @override
  _AgregarAspiranteState createState() => _AgregarAspiranteState();
}

class _AgregarAspiranteState extends State<AgregarAspirante> {

  var nombre = new TextEditingController();
  var apellidos = new TextEditingController();
  var edad = new TextEditingController();
  String sexo;
  var correo = new TextEditingController();
  var telefonoMovil = new TextEditingController();
  var fechaRegistro = new TextEditingController();
  String preparatoria, primeraOpcion, segundaOpcion, terceraOpcion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('Agregar'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: <Widget>[
            Container(
              width: 15,
              height: 40,
            ),
            TextField(
              controller: nombre,
              decoration: InputDecoration(
                icon: Icon(Icons.perm_identity),
                labelText: 'Nombre',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            TextField(
              controller: apellidos,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Apellidos',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            TextField(
              controller: edad,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.face),
                labelText: 'Edad',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            DropdownButton<String>(
              icon: Icon(Icons.accessibility),
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  sexo = value;
                });
              },
              value: sexo,
              items: [DropdownMenuItem(
                  value: "Hombre",
                  child: Text('Hombre'),
                ),
                DropdownMenuItem(
                  value: "Mujer",
                  child: Text('Mujer'),
                ),
                DropdownMenuItem(
                  value: "Sin especificar",
                  child: Text('Sin especificar'),
                )
              ],
              hint: Text('Sexo'),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            TextField(
              controller: correo,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.alternate_email),
                labelText: 'Correo',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            TextField(
              controller: telefonoMovil,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.phone_android),
                labelText: 'Telefono movil',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            DropdownButton<String>(
              icon: Icon(Icons.school),
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  preparatoria = value;
                });
              },
              value: preparatoria,



              items: instituciones,
              hint: Text('Preparatoria de procedencia'),
            ),




            Container(
              width: 15,
              height: 15,
            ),
            DropdownButton<String>(
              icon: Icon(Icons.looks_one),
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  primeraOpcion = value;
                });
              },
              value: primeraOpcion,
              items: carreras,
              hint: Text('Primera Opcion de Carrera'),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            DropdownButton<String>(
              icon: Icon(Icons.looks_two),
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  segundaOpcion = value;
                });
              },
              value: segundaOpcion,
              items: carreras,
              hint: Text('Segunda Opcion de Carrera'),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            DropdownButton<String>(
              icon: Icon(Icons.looks_3),
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  terceraOpcion = value;
                });
              },
              value: terceraOpcion,
              items: carreras,
              hint: Text('Tercera Opcion de Carrera'),
            ),
            Container(
              width: 15,
              height: 15,
            ),
            TextField(
              controller: fechaRegistro,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
                labelText: 'Fecha de Registro',
                suffixText: '(DD/MM/AAAA)',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            FlatButton(
              child: Text('Agregar', style: TextStyle( color: Colors.blue),),
              onPressed: (){
                if(nombre.text!="" && apellidos.text!="" && edad.text!="" && sexo!=""
                  && correo.text!="" && telefonoMovil.text!="" && preparatoria!=""
                  && primeraOpcion!="" && segundaOpcion!="" && terceraOpcion!="" && fechaRegistro.text!=""){
                    Aspirante a = new Aspirante();
                    a.nombre=nombre.text;
                    a.apellidos=apellidos.text;
                    a.edad=int.parse(edad.text);
                    a.sexo=sexo;
                    a.correo=correo.text; 
                    a.telefonoMovil=telefonoMovil.text;
                    a.preparatoria=int.parse(preparatoria); //FALTA SWITCH CASE
                    a.primeraOpcion=primeraOpcion;
                    a.segundaOpcion=segundaOpcion;
                    a.terceraOpcion=terceraOpcion;
                    a.fechaRegistro=fechaRegistro.text;
                    a.status=0;
                    a.mensaje="Aun no se ha sincronizado";

                    DBProvider.db.registraAspirante(a);
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Registro Exitoso'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Aceptar"),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              )
                            ], 
                          );
                        }
                      );
                  }else{
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Error de Registro'),
                            content: Text('No ha llenado todos los campos de registro'), 
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Aceptar"),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              )
                            ], 
                          );
                        }
                      );
                  }
              }
            )
          ],  
        ),
      ),
    );
  }
}


class Sincronizar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sincronizar'),
      ),
      body: FutureBuilder(
        future: DBProvider.db.getAspirantes(),
        builder: (context, snapshot){
          if(snapshot.data==null)
            return Center(
              child: CircularProgressIndicator(),
            );
            else 
              return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, indice){
              return ListTile(
                leading: Text(Aspirante.fromJson(snapshot.data[indice]).fechaRegistro.toString()),
                title: Text(Aspirante.fromJson(snapshot.data[indice]).nombre.toString()+" "+Aspirante.fromJson(snapshot.data[indice]).apellidos.toString()),
                subtitle: Text(Aspirante.fromJson(snapshot.data[indice]).telefonoMovil.toString()),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.deepPurple,
                  onPressed: (){
                    sincronizar(Aspirante.fromJson(snapshot.data[indice]));
                    showDialog(
                        context: context,
                        builder:(context){
                          return AlertDialog(
                            title: Text('Sincronizacion realizada'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Aceptar'),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          );
                        }
                      );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}


class NoSincronizados extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Sincronizados'),
      ),
      body: FutureBuilder(
        future: DBProvider.db.getAspirantesN(),
        builder: (context, snapshot){
          if(snapshot.data==null)
            return Center(
              child: CircularProgressIndicator(),
            );
            else 
              return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, indice){
              return ListTile(
                leading: Text(Aspirante.fromJson(snapshot.data[indice]).fechaRegistro.toString()),
                title: Text(Aspirante.fromJson(snapshot.data[indice]).nombre.toString()+" "+Aspirante.fromJson(snapshot.data[indice]).apellidos.toString()),
                subtitle: Text(Aspirante.fromJson(snapshot.data[indice]).telefonoMovil.toString()+"\n "+
                  Aspirante.fromJson(snapshot.data[indice]).mensaje.toString()),
              );
            },
          );
        },
      ),
    );
  }
}

class MostrarUsuarios extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
                      future: DBProvider.db.getTodosUsuarios(),
                      builder: (context, snapshot){
                        if(snapshot.data==null){
                          print('no hay valores');
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                          }
                        else{ 
                          print('si hay valores deberia mostrarlos');
                          return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, indice){
                              return ListTile(
                                leading: Text(Usuario.fromJson(snapshot.data[indice]).id.toString()),
                                title: Text(Usuario.fromJson(snapshot.data[indice]).nombre.toString()),
                                trailing: Text(Usuario.fromJson(snapshot.data[indice]).contrasena.toString()),
                              );
                            },
                          );
                          }
                      },
                    ),
      ),
    );
  }
}

class MostrarUsuario extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: FutureBuilder(
                      future: DBProvider.db.getUsuario('nombre', 'contrasena'),
                      builder: (context, snapshot){
                        if(snapshot.data==null)
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        else 
                          return ListTile(
                                leading: Text(Usuario.fromJson(snapshot.data).id.toString()),
                                title: Text(Usuario.fromJson(snapshot.data).nombre.toString()),
                                trailing: Text(Usuario.fromJson(snapshot.data).contrasena.toString()),
                              );
                            },
                    
                    ),
      ),
    );
  }
}

class EntradaPage extends StatelessWidget{

  Usuario inicio;
  EntradaPage(this.inicio);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inicio'),
        ),   
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(inicio.correo),
              accountName: Text(inicio.nombre),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.account_circle, size: 70.0,),
                maxRadius: 10,
                ),
              ),
            ListTile(
                title: Text('Agregar Aspirante'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.deepPurple,
                  ),
                  onTap: (){
                    final ruta = MaterialPageRoute(
                      builder: (context) => AgregarAspirante()
                    );
                    Navigator.push(context, ruta);
                },
              ),
              ListTile(
                title: Text('Sincronizar'),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.deepPurple,
                  ),
                onTap: (){
                    final ruta = MaterialPageRoute(
                      builder: (context) => Sincronizar()
                    );
                    Navigator.push(context, ruta);
                },
              ),
              ListTile(
                title: Text('No sincronizados'),
                leading: Icon(
                  Icons.camera_alt,
                  color: Colors.deepPurple,
                  ),
                onTap: (){
                    final ruta = MaterialPageRoute(
                      builder: (context) => NoSincronizados()
                    );
                    Navigator.push(context, ruta);
                },
              ),
              ListTile(
                title: Text('Salir'),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.deepPurple,
                  ),
                onTap: (){
                    Navigator.pop(context);
                    final ruta = MaterialPageRoute(
                      builder: (context) => MyApp()
                    );
                    Navigator.push(context, ruta);
                },
              )
            ],
          ),
        ),
    );
  }
}

class Registro extends StatefulWidget{
  @override
  createState() => _RegistroPageState(); 
  
}

class _RegistroPageState extends State<Registro>{

  var nombre = TextEditingController();
  var contrasena = TextEditingController();
  var rcontrasena = TextEditingController();
  var correo = TextEditingController();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Registro'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: nombre,
            decoration: InputDecoration(
              labelText: 'Nombre',
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: correo,
            decoration: InputDecoration(
              labelText: 'Correo',
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: contrasena,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: rcontrasena,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Repite Contraseña',
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Registrar', style: TextStyle(color: Colors.blue, ) ),
                onPressed: () async{
                  if(nombre.text!="" && contrasena.text!="" && correo.text!="" && rcontrasena.text!=""){
                    if(contrasena.text == rcontrasena.text){
                      Usuario u = Usuario();
                      u.nombre= nombre.text;
                      u.contrasena = contrasena.text;
                      u.correo = correo.text;
                      int registro = await DBProvider.db.crearUsuario(u);
                      if(registro == 1){print("Registro un valor");}
                      else{print(registro);}
                      showDialog(
                        context: context,
                        builder:(context){
                          return AlertDialog(
                            title: Text('Registro Exitoso'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Aceptar'),
                                onPressed: (){
                                  Navigator.pop(context);
                                  final ruta = MaterialPageRoute(
                                  builder: (context) => LoginOrigin()
                                  );
                                  Navigator.push(context, ruta); 
                                },
                              )
                            ],
                          );
                        }
                      );
                    }else{
                      showDialog(
                        context: context,
                        builder:(context){
                          return AlertDialog(
                            title: Text('Contraseñas diferentes'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Aceptar'),
                                onPressed: (){
                                  Navigator.pop(context);
                                  final ruta = MaterialPageRoute(
                                  builder: (context) => Registro()
                                  );
                                  Navigator.push(context, ruta); 
                                },
                              )
                            ],
                          );
                        }
                      );
                    }
                  }else{
                    print('Hay un espacio vacio');
                  }
                },
              )
            ],
          )
        ],
      ),
    ),
  );
}

}

//Usuario
class Usuario {
  int id;
  String nombre;
  String correo;
  String contrasena;

  Usuario({this.id, this.nombre, this.correo, this.contrasena});

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "nombre": nombre,
      "correo": correo,
      "contrasena": contrasena,
    };
  }

  factory Usuario.fromJson(Map<String, dynamic> data)=> Usuario(
    id:data["id"],
    nombre:data["nombre"],
    correo:data["correo"],
    contrasena:data["contrasena"]
  );

}

//ASPIRANTE
class Aspirante {
  int id;
  String nombre;
  String apellidos;
  int edad;
  String sexo;
  String correo;
  String telefonoMovil;
  int preparatoria;
  String primeraOpcion;
  String segundaOpcion;
  String terceraOpcion;
  String fechaRegistro;
  int status;
  String mensaje;

  Aspirante({this.id, this.nombre, this.apellidos, this.edad, this.sexo, this.correo, this.telefonoMovil,
  this.preparatoria, this.primeraOpcion, this.segundaOpcion, this.terceraOpcion, this.fechaRegistro,
  this.status, this.mensaje});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'apellidos': apellidos,
      'edad': edad,
      'sexo': sexo,
      'correo': correo,
      'telefonoMovil': telefonoMovil,
      'preparatoria': preparatoria,
      'primeraOpcion': primeraOpcion,
      'segundaOpcion': segundaOpcion,
      'terceraOpcion': terceraOpcion,
      'fechaRegistro': fechaRegistro,
      'status': status,
      'mensaje': mensaje,
    };
  }

  factory Aspirante.fromJson(Map<String, dynamic> data)=> Aspirante(
    id:data["id"],
    nombre:data["nombre"],
    apellidos:data["apellidos"],
    edad:data["edad"],
    sexo:data["sexo"],
    correo:data["correo"],
    telefonoMovil: data["telefonoMovil"],
    preparatoria: data["preparatoria"],
    primeraOpcion: data["primeraOpcion"],
    segundaOpcion: data["segundaOpcion"],
    terceraOpcion: data["terceraOpcion"],
    fechaRegistro: data["fechaRegistro"],
    status: data["status"],
    mensaje: data["mensaje"]
  
  );
}


class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    if(_database!=null) return _database;

    _database = await initDB();

    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'RegProyecto.db');

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db, int version) async {
        await db.execute(
          "CREATE TABLE Usuario("
            " id INTEGER PRIMARY KEY,"
            " nombre TEXT,"
            " correo TEXT,"
            " contrasena TEXT"
          ")");
          await db.execute(
            "CREATE TABLE Aspirante("
              " id INTEGER PRIMARY KEY,"
              " nombre TEXT,"
              " apellidos TEXT,"
              " edad INT,"
              " sexo TEXT,"
              " correo TEXT,"
              " telefonoMovil TEXT,"
              " preparatoria INT,"
              " primeraOpcion TEXT,"
              " segundaOpcion TEXT,"
              " terceraOpcion TEXT,"
              " fechaRegistro TEXT,"
              " status INT,"
              " mensaje TEXT"
            ")");     

      }
    );
  }

  //CreateReadUpdateDelete = CRUD
  //CREATE
  crearUsuario(Usuario usuario) async {
    final db = await database;

    final res = await db.insert('Usuario', usuario.toJson());

    return res;
  }

  crearAspirante(Aspirante aspirante) async {
    final db = await database;

    final res = await db.insert('Aspirante', aspirante.toJson());

    return res;
  }

  //READ
  Future<Usuario> getUsuario(String nombre, String contrasena) async{
    final db = await database;

    final res = await db.query(
      'Usuario',
      where: "nombre = ? and contrasena = ?",
      whereArgs: [nombre, contrasena]
    );

    return res.isNotEmpty ? Usuario.fromJson(res.first) : null;
  }

  Future<List<Aspirante>> getTodosUsuarios() async{
    final db = await database;

    final res = await db.query('Aspirante');

    List<Aspirante> usuarios = res.isNotEmpty
      ? res.map( (a)=>Aspirante.fromJson(a) ).toList() 
      : [];

    return usuarios;
  }

  Future<List<Aspirante>> getTodosAspirantes() async{
    final db = await database;

    final res = await db.query('Aspirante');

    List<Aspirante> aspirantes = res.isNotEmpty
      ? res.map( (a)=>Aspirante.fromJson(a) ).toList() 
      : [];

    return aspirantes;
  }

  //UPDATE no lleva

  //DELETE
  deleteUsuario(int id) async {
    final db = await database;

    final res = await db.delete("Usuario", where: 'id = ?', whereArgs: [id]);

    return res;
  }

  deleteAspirante(int id) async {
    final db = await database;

    final res = await db.delete("Aspirante", where: 'id = ?', whereArgs: [id]);

    return res;
  }

  //ASPIRANTE
  Future<int> registraAspirante(Aspirante a) async{
    var db = await database;
    
    var result = await db.insert("Aspirante", a.toJson());

    return result;
  }
  //LISTAR
  Future<List> getAspirantes() async {
    var db = await database;

    var result = await db.query("Aspirante", columns: ["id", "nombre","apellidos","edad","sexo","correo","telefonoMovil","preparatoria","primeraOpcion","segundaOpcion","terceraOpcion","fechaRegistro","status","mensaje"]);

    return result.toList();
  }

  Future<List> getAspirantesN() async {
    var db = await database;

    var result = await db.rawQuery("SELECT * FROM Aspirante WHERE status ==0");

    return result.toList();
  }

  //ACTUALIZAR
  Future<int> updateAspirante(Aspirante a) async {
    var db = await database;

  return await db.update("Aspirante", a.toJson(), where: "id = ?", whereArgs: [a.id]);
}

}

//Metodo de Sincrnizacion
Future<Map<String, dynamic>> sincronizar(Aspirante a) async{
  var url ='http://sistemas.upiiz.ipn.mx/isc/sira/api/actionAddAspiranteApp.php?nombre=${a.nombre}&movil=${a.telefonoMovil}&email=${a.correo}&accion=agregar';
  
  var respuestaAPI = await http.get(url);
  Map<String, dynamic> res;
  
  //200 = Todo esta OK
  if(respuestaAPI.statusCode==200){
    res = json.decode(respuestaAPI.body);
    print(res);
  }else
    res = {"estado": 0, "mensaje": "Sin respuesta del Servidor"};

    a.status=int.parse(res["estado"].toString());
    a.mensaje=res["mensaje"];
    DBProvider.db.updateAspirante(a);

  return res;
}
