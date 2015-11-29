var app = angular.module('customers', []);

app.controller("CustomerSearchController", [
	"$scope", "$http",
	function($scope, $http){
		$scope.search = function(searchTerm){
			$scope.searchedFor = searchTerm;

			$http.get("/customers.json", { params: { "keywords": searchTerm } }).
			success( function(data, status, header, config){
				$scope.customers = data;
			}).
			error(function(data, status, header, config){
				alert("There was a problem:" + status);
			});
		};
	}
	]);