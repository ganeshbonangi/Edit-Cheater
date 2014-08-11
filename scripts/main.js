var app=angular.module("AuthoringShell",["textAngular","ui.bootstrap"]);
//var service=angular.module("services",[]);
app.config(function(){
	
});
app.controller("metadatadigester",function($scope,$rootScope,$compile,$timeout){
	//$scope.sections=$scope.questionType=$scope.questionLevel=$scope.subsection=[];
	$scope.$on("gotdata",function(){
	$timeout(function(){$scope.sections=$rootScope.metadata.sections;
		//console.log($scope.sections);
		$scope.questionType=$rootScope.metadata.question_type;
		$scope.questionLevel=$rootScope.metadata.question_level;
		$scope.subsection=$rootScope.metadata[$rootScope.metadata.sections[0]];
	});
	$scope.sendDataToServer=function(){
		var dataObject={},dataObjectArr=[],flag=true;
		var question_len=$(".question").length;
		for(var i=0;i<question_len;i++){
			dataObjectArr[i]={};
			dataObjectArr[i].section_name=$.trim($scope.currentSection);//$("#section select option:selected").val();
			dataObjectArr[i].subsection_name=$.trim($scope.currentSubSection);//$("#subsection select option:selected").val();
			dataObjectArr[i].question_level=$.trim($scope.currentQuestionLevel);//$("#questionlevel select option:selected").val();
			dataObjectArr[i].question_type=$.trim($scope.currentQuestionType);//$("#questiontype select option:selected").val();
			dataObjectArr[i].question_info=$.trim($scope.questionInfo);
			var self=$($(".question")[i]);
			dataObjectArr[i].question=self.find("textarea").val();
			dataObjectArr[i].options="";
			var optlen=self.parent().find(".option").length;
			for(var j=1;j<=optlen;j++){
				dataObjectArr[i].options+=($(self.parent().find("textarea")[j]).val()+"__"+$(self.parent().find(".option")[j-1]).prev().prop("checked")+"$$");
			}
			if(self.parent().find(".radioClass:checked").length&&dataObjectArr[i].question){
				//dataObjectArr+=(JSON.stringify(dataObject)+"00078");
				//dataObjectArr[i]=dataObject;
			}else{
				flag=false;
			}	
		}
/*		dataObject.question=$.trim($scope.question);
		
		for(var i=0;i<$(".option").length;i++){
			dataObject.options+=($($(".option")[i]).val()+"__"+$($(".option")[i]).prev().prop("checked")+"$$");
		}

*/
		if(flag){
			$scope.sendData(dataObjectArr);
		}else{
			alert("You should provide quesiton and answer");
		}
	}
	$scope.addQuestionModel=function(){
		var len=$(".question").length;
		$("#addQuestion").before($compile('<div style="border:1px solid silver"><span>Enter question </span><div text-angular  ta-default-wrap="p" ta-target-toolbars="statictoolbar" class="question"> </div><br /><button class="addOptions" ng-click="addOptions1('+len+')">Add option( + )</button><br/></div>')($scope));
					/*Enter question ><textarea ng-model="question"> </textarea><br />Add option<button id="addOptions" click="addOptions()">+</button>*/
	}
	$scope.sectionChanger=function(){		
		$scope.currentSubSection=undefined;
		var str=$.trim($scope.currentSection);
		$scope.subsection=$rootScope.metadata[str];
	}
	$scope.addOptions1=function(index){
		var len=$(".option").length;
		$($(".question")[index]).parent().find(".addOptions").before($compile('<input type="radio" class="radioClass" ng-model="radio'+len+' " name="'+index+'" \><div text-angular  ta-default-wrap="p" ta-target-toolbars="statictoolbar" class="option" type="text" ng-model="option'+len+'" > </div><br />')($scope));
	}


  $scope.tabs = [
    { title:'Q', content:'this is content of the ',options:[1,2,3,4,5] }/*,
    { title:'Q2', content:'thsi is th econtento fo the 2', disabled: false },
    { title:'Q2', content:'thsi is th econtento fo the 3', disabled: false },
    { title:'Q3', content:'thsi is th econtento fo the 4', disabled: false }*/
  ];
$scope.question=[];
$scope.options=[1,2,3,4,5,6,7,8,9,10];
//$scope.options[0]=[0];
$scope.addOption=function(index){
//  $scope.options[index].push($scope.options[index]+1);
}
  $scope.alertMe = function(i) {
    setTimeout(function() {
     // alert('You\'ve selected the alert tab!'+i);
    });
  };
  $scope.addTab = function(){
    $scope.tabs.push({title:'Q', content:'this is content of the  ',options:[1,2,3,4,5], disabled: false });
  };
  $scope.deleteTab=function(index){
    $scope.tabs.splice(index,1);
  };



	
});

$scope.sendData=function(obj){
//  console.log(JSON.stringify(obj));
  $.post("updateDB.php",
  {"data":obj},
  function(data,status){
  //$("body").append(data);
   // alert("Data: " + data + "\nStatus: " + status);
  });
}
});
app.run(function($rootScope,$timeout){
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    	$rootScope.metadata=JSON.parse(xmlhttp.responseText);
		    	//debugger;
				//console.log($rootScope.metadata);
				$rootScope.$broadcast("gotdata");
		    }
		  }
		xmlhttp.open("GET","getJson.php?requestFor=dataJSON",true);
		xmlhttp.send();	
		/*$rootScope.metadata={"question_type":["mutiple choice single select"],"question_level":["easy","medium","hard"],"sections":["General Awareness","English","Reasoning","Quantitative","Compute Knowledge"],"General Awareness":["sports","economics","general knoledge"],"English":[],"Reasoning":[],"Quantitative":["Simplifications","Time and Work"],"Compute Knowledge":[]};
		$timeout(function() {$rootScope.$broadcast("gotdata");}, 500);*/
});