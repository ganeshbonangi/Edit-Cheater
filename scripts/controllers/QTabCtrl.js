var TabsDemoCtrl = function ($scope) {
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
  $scope.preview = function(){
    alert("preview");
  }
};