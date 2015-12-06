describe("CustomerDetailController", function(){
	describe("Initialization", function(){
		var scope = null,
			controller = null,
			id = 42,
			httpBackend = null,
			customer = {
				id: id,
				first_name: "Juan",
				last_name: "Ruiz",
				username: "juan.ruiz",
				email: "juan.ruiz@somewhere.com",
				created_at: "2014-01-03T11:12:34"
			};
		beforeEach(module("customers"));
		beforeEach(inject(function(	$controller,
									$rootScope,
									$routeParams,
									$httpBackend){
			scope = $rootScope.$new();
			httpBackend = $httpBackend;
			$routeParams.id = id;

			httpBackend.when('GET', '/customers/' + id + '.json').respond(customer);

			controller = $controller( "CustomerDetailController", { $scope: scope } )
		}));

		it("fetches the customer from the back end", function(){
			httpBackend.flush();
			expect(scope.customer).toEqualData(customer);
		})
	});
});