<?php
  $questionData=$_POST["data"];
  //echo $_POST;
  // var_dump($questionData);
  //$i=$questionData;
  $con = new mysqli("localhost", "abcde", "54321", "examcolors", 3306);
  if (!$con)
    {
    die('Could not connect: ' . mysql_error());
    }
	
	
  	//$token = strtok($questionData, "00078");

//	echo $token;
	$group_id=$con->query("SELECT MAX( group_id ) as max_item FROM  questions");
	
	$group_id=mysqli_fetch_assoc($group_id);
	$group_id=$group_id["max_item"];
	//echo $group_id;
	$group_id+=1;
	//while ($token != false){
	foreach ($questionData as $v) {
    //echo "Current value of \$a: $v.\n";

//echo $token."---------->";
	//$i=json_decode($token,true);

//	var_dump($v);
    foreach($v as $x=>$x_value)
     {
//echo "count";
		switch ($x) {
			case "section_name":
				$s_id=$con->query("SELECT section_id FROM sections where section_name='$x_value'");
				$s_id=mysqli_fetch_assoc($s_id);
				$s_id=$s_id["section_id"];
				//echo "section---->".$s_id;
				break;
			case "subsection_name":
				$sub_id=$con->query("SELECT subsection_id FROM subsections where subsection_name='$x_value'");
				 $sub_id=mysqli_fetch_assoc($sub_id);
				 $sub_id=$sub_id["subsection_id"];
				//echo "subsection---->".$sub_id;
				break;
			case "question_level":
				$q_level_id=$con->query("SELECT question_level_id FROM question_level where question_level_name='$x_value'");
				$q_level_id=mysqli_fetch_assoc($q_level_id);
				$q_level_id=$q_level_id["question_level_id"];
				//echo "q_level_id---->".$q_level_id;
				break;
			case "question_type":
				$q_type_id=$con->query("SELECT question_type_id FROM question_type where question_type_name='$x_value'");
				$q_type_id=mysqli_fetch_assoc($q_type_id);
				$q_type_id=$q_type_id["question_type_id"];
				//echo "q_type_id---->".$q_type_id;
				break;
			case "question_info":
				//echo "q info-->".$x_value;
				$x_value=addslashes($x_value);
				$q_info=$x_value;
				break;
			case "question":
				$x_value=addslashes($x_value);
				$q=$x_value;
				break;
			case "options":
				$x_value=addslashes($x_value);
				$q_options=$x_value;
				break;
		}
     }
  // $k=$i['question'];
  //mysql_query($connect,"CALL insert('$username','$name')");
   $con->query("CALL updateQuestions('$group_id','$q', '$q_options', 'ans','$s_id','$sub_id','$q_type_id','$q_level_id','$q_info')");
//	echo "count";
//   $con->query("INSERT INTO questions (question, options, ans,year,group_id,section_id,subsection_id,question_type_id,question_level_id,question_info) VALUES ('$q', '$q_options','ans',2013-07-07,'groupid','$s_id','$sub_id','$q_type_id','$q_level_id','$q_info')");
//echo "This updated";
   //mysql_query("INSERT INTO questions (question, options, answer) VALUES ('ffff', 'gggg','dddd')",$con);
   /*$result = mysql_query("SELECT question, options, ans,year,group_id,section_id,subsetion_id,questiontype_id,question_level_id,question_info FROM questions");
   //echo "------------->".$result;
   while($row = mysqli_fetch_array($result))
     {
      echo $row['question'] . " " . $row['options'];
      echo "<br>";
     }*/
	//$token = strtok("00078");
	}
    mysqli_close($con);
?>