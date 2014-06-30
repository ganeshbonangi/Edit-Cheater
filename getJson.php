<?php


   $questionData=$_GET["requestFor"];
   if($questionData=="dataJSON"){
		echo generateJSON();		
   }
   
   function generateJSON(){
   
		//create connection with needed data base
		//have to get the meta data of the tables
		//constructing proper json formated data
		//need to serialize the data and should send to the client michan
//		$con = mysql_connect("localhost","root","");
	/*	if (!$con)
		{
			die('Could not connect: ' . mysql_error());
		}*/
$con = new mysqli("localhost", "abcde", "54321", "examcolors", 3306);
if ($con->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

//echo $con->host_info . "\n";

		$json_str=array();
//		mysql_select_db("examcolors");
//($query)
		$data = $con->query("SELECT * FROM question_type") ;
		$temp=array();
		while($info = mysqli_fetch_array( $data )) 
		{ 
			 array_push($temp,$info['question_type_name']);
		}
		$json_str['question_type']=$temp;
		$data = $con->query("SELECT * FROM question_level") ;
		$temp=array();
		while($info = mysqli_fetch_array( $data )) 
		{ 

			 array_push($temp,$info['question_level_name']);
		}
		$json_str['question_level']=$temp;
		$temp=array();				
		$data = $con->query("SELECT * FROM sections") ;
		$temp=array();
		while($info = mysqli_fetch_array( $data )) 
		{ 
			 array_push($temp,$info['section_name']);
		}
		$json_str['sections']=$temp;		
		/*$data = $con->query("SELECT * FROM sections") ;
		$temp=array();
		while($info = mysqli_fetch_array( $data )) 
		{ 
			 array_push($temp,$info['subsection_name']);
			 //$json_str[$info['section_name']]=array();
		}*/
		//$json_str['subsections']=$temp;	
	$data = $con->query("SELECT * FROM sections") ;

		$temp=array();
		while($info = mysqli_fetch_array( $data )) 
		{ 
			 $json_str[$info['section_name']]=array();
		}
		
		$data = $con->query("SELECT sections.section_name, sections.section_id, subsections.subsection_name FROM sections INNER JOIN subsections ON sections.section_id = subsections.section_id") ;

		$temp=array();
		while($info = mysqli_fetch_array( $data )) 
		{ 
			 array_push($json_str[$info['section_name']],$info['subsection_name']);
		}
	return json_encode($json_str);	
   
   }
?>