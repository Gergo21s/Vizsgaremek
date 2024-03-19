;(function(window, angular) {

  'use strict';

  // Application module
  angular.module('app', [
    'ui.router',
		'app.common'
  ])

  // Application config
  .config([
    '$stateProvider', 
    '$urlRouterProvider', 
    ($stateProvider, $urlRouterProvider) => {

      $stateProvider
      .state('root', {
				abstract: true,
				views: {
					'@': {
						templateUrl: './html/root.html'
					},
					'header@root': {
						templateUrl: './html/header.html'
					},
					'footer@root': {
						templateUrl: './html/footer.html'
					}
				}
      })
			.state('home', {
				url: '/',
				parent: 'root',
				templateUrl: './html/home.html',
				controller: 'homeController'
			})
			.state('asztalfoglalas', {
				url: '/asztalfoglalas',
				parent: 'root',
				templateUrl: './html/asztalfoglalas.html',
				controller: 'asztalfoglalasController'
			})
			.state('programok', {
				url: '/programok',
				parent: 'root',
				templateUrl: './html/programok.html',
				controller: 'programokController'
			})
			.state('promoterek', {
				url: '/promoterek',
				parent: 'root',
				templateUrl: './html/promoterek.html',
				controller: 'promoterekController'
			})
			.state('kapcsolat', {
				url: '/kapcsolat',
				parent: 'root',
				templateUrl: './html/uder_construction.html',
				controller: 'kapcsolatController'
			})
			.state('hazirend', {
				url: '/hazirend',
				parent: 'root',
				templateUrl: './html/hazirend.html',
				controller: 'hazirendController'
			})
			.state('modal', {
				url: '/programok',
				parent: 'root',
				templateUrl: './html/programok.html',
				controller: 'modalController'
			});
			
      $urlRouterProvider.otherwise('/');
    }
  ])

  // Application run
  .run([
    'trans',
    (trans) => {

      // Transaction events
			trans.events();
    }
  ])

	// Home controller
  .controller('homeController', [
    '$scope',
	'$timeout',
	'http',
    function($scope, $timeout, http) {
		http.request('./data/home.json')
		.then(response => {
	
			// Set data, and apply change
			$scope.data = response;
			$scope.$applyAsync();
		})
		.catch(e => $timeout(() => { alert(e); }, 50));
		}
	])

	// Asztalfoglalás controller
  .controller('asztalfoglalasController', [
    '$scope',
		'$timeout',
		'http',
		'util',
    function($scope, $timeout, http, util) {
			
			// Set data index, and model for input
			$scope.dataIndex = null;
			$scope.model = {};

			// Get data
			http.request('./php/reservation_type.php')
			.then(response => {

				// Set data, and apply change
				$scope.data = response;	
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));

			// Get modal dialog
			let modalDialog 	= document.querySelector('#foglalasiUrlap'),
					modalInstance	= bootstrap.Modal.getOrCreateInstance('#foglalasiUrlap'); 
			
			// Set event close modal dialog
			modalDialog.addEventListener('hidden.bs.modal', function () {

				// Reset model
				Object.keys($scope.model).forEach(key => {
					$scope.model[key] = null;
				});

				// Reset data index
				$scope.dataIndex = null;
			});

			// Reservation
			$scope.foglalas = (event) => {
				let btn = event.currentTarget;
				$scope.dataIndex = parseInt(btn.dataset.index);
				$scope.model.table = $scope.data[$scope.dataIndex].name;
				$scope.$applyAsync();
			};

			// Pay
			$scope.fizet = () => {
				
				// Get neccesary input properties
				let args = util.objFilterByKeys($scope.model, [
					'roole',
					'table'
				], false);

				// Set type identifier
				args.type_id = $scope.data[$scope.dataIndex].id;

				// Request to the server
				http.request({
					url: './php/reservation.php',
					data: args
				})
				.then(response => {

					$timeout(() => { 
						alert(response); 
					}, 50);
				})
				.catch(e => $timeout(() => { alert(e); }, 50));

				// Close modal instance
				modalInstance.hide();
			};
		}
	])
	
	// Programok controller
  .controller('programokController', [
    	'$scope',
		'$timeout',
		'http',
    function($scope, $timeout, http) {
			
			// Get data
			http.request('./data/programok.json')
			.then(response => {

				// Set data, and apply change
				$scope.data = response;
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));
		}
	])
// Information controller

	.controller('modalController', [
    	'$scope',
		'$timeout',
		'http',
		'util',
    function($scope, $timeout, http,util) {
			
			// Get data
			http.request('./data/information.json')
			.then(response => {

				// Set data, and apply change
				$scope.data = response;
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));


			let modalDialog 	= document.querySelector('#ikonModal'),
			modalInstance	= bootstrap.Modal.getOrCreateInstance('#ikonModal'); 
	
	// Set event close modal dialog
	modalDialog.addEventListener('hidden.bs.modal', function () {

		// Reset model
		Object.keys($scope.model).forEach(key => {
			$scope.model[key] = null;
		});

		// Reset data index
		$scope.dataIndex = null;

	});
	modalInstance.hide();
		}
	])

		// Promoter controller
		.controller('promoterekController', [
			'$scope',
			'$timeout',
			'http',
		function($scope, $timeout, http) {
				
				// Get data
				http.request('./data/promoterek.json')
				.then(response => {
	
					// Set data, and apply change
					$scope.data = response;
					$scope.$applyAsync();
				})
				.catch(e => $timeout(() => { alert(e); }, 50));
			}
		])
	//Házirend controller
	.controller('hazirendController', [
    	'$scope',
		'$timeout',
		'http',
    function($scope, $timeout, http) {
			
			// Get data
			http.request('./data/hazirend.json')
			.then(response => {

				// Set data, and apply change
				$scope.data = response;
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));
		}
	])
	
	// initialize necessary variable
	$scope.images = [];
	$scope.ratings = [];
	$scope.rating = null;
	$scope.ratingData = {
	  rating: null,
	  ratingText: '',}

	// Promoterek controller
	.controller('promoterekController', [
		'$scope',
		'$timeout',
		'http',
		function($scope, $timeout, http) {
				
			// Get data
			http.request('./data/promoterek.json')
			.then(response => {
	
				// Set data, and apply change
				$scope.data = response;
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));
		}
	]);

})(window, angular);