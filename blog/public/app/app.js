angular.module('testingApp',['angular-growl'])
.controller('MainCtrl',function($scope,$http,growl){

	$scope.base_url = "http://localhost/laravel/blog/public/";
	$scope.active_qn = 0;
	$scope.active_test =angular.element("#active_test").val();;
	$scope.active_answer = false;
	$scope.completed = false;
	$scope.max_qns=angular.element("#max_qns").val();
	$scope.started = false;
	$scope.expiry_time = null;

	$scope.correct_stat = angular.element("#correct-stat").val();
	$scope.incorrect_stat = angular.element("#incorrect-stat").val();

	$scope.startTest = function(){
		$scope.started = true;

		growl.info("Intialising test timer",{title:"Heads Up"})
		
		$http.post($scope.base_url + 'timer?test_id=' + $scope.active_test)
		.then(
		// resolved handler
		function(response) {
			console.log(response.data);
			$scope.expiry_time = response.data.expiry_time;
			growl.success("Timer started",{title:"Success"});
		},function(response) {
				console.log(response.data);
		}); 
	}

	$scope.updateSelected = function(checked_answer){
		$scope.active_answer = checked_answer;
	},
	$scope.skip = function(question_db_id){
		$scope.active_answer = "skipped";
		$scope.saveAnswer(question_db_id);
	//	$scope.active_qn +=1;
	},

	$scope.previous = function(){
		$scope.active_qn -=1;
	},
	$scope.next = function(){
		//alert($scope.max_qns)
		$scope.active_qn +=1;
		$scope.active_answer = false;
		if($scope.active_qn==$scope.max_qns){
			$scope.completed=true;
		}

	},
	$scope.submit = function(){
		$scope.saveAnswer();
		$scope.skip();
	}, 

	$scope.saveAnswer = function(question_db_id){

		if($scope.active_answer == false){
			$scope.skip(question_db_id);
			growl.warning("Question has no answer it has been marked as skipped",{title:"Warning"})
			return;
		}
		$http.post($scope.base_url + 'score?test_id=' + $scope.active_test +"&question_id="+question_db_id+"&answer="+$scope.active_answer)
		.then(
		// resolved handler
		function(response) {
			if (response.data =="true") {
				growl.success("Answer submitted successfully",{title:"Success"})
				$scope.next();
			};
		},
		// rejected handler
		function(response) {
		// response object has the properties
		// data, status, headers, config, statusText
		}
		); 
		}
})