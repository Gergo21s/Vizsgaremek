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
				templateUrl: './html/uder_construction.html'
			})
			.state('urlap', {
				url: '/urlap',
				parent: 'root',
				templateUrl: './html/urlap.html',
				controller: 'urlapController'
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
    function($scope) {
			console.log('Home controller...');
		}
	])

	// Asztalfoglalás controller
  .controller('asztalfoglalasController', [
    '$scope',
		'$timeout',
		'http',
		'util',
    function($scope, $timeout, http, util) {
			
			$scope.dataIndex = -1;
			$scope.model = {};

			// Get data
			http.request('./php/reservation_type.php')
			.then(response => {

				// Set data, and apply change
				$scope.data = response;	
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));

			$scope.foglalas = (event) => {
				let btn = event.currentTarget;
				$scope.dataIndex = parseInt(btn.dataset.index);
				$scope.model.table = $scope.data[$scope.dataIndex].name;
				$scope.$applyAsync();
			};

			$scope.fizet = () => {
				
				// Get neccesary input properties
				let args = util.objFilterByKeys($scope.model, [
					'roole',
					'table'
				], false);
				args.type_id = $scope.data[$scope.dataIndex].id;

				http.request({
					url: './php/reservation.php',
					data: args
				})
				.then(response => {
					console.log(response);
				})
				.catch(e => $timeout(() => { alert(e); }, 50));
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
	])

	// Asztalfoglalás controller
	.controller('urlapController', [
		'$scope',
		'http',
		function($scope, http) {
			
			$scope.tableTypes = [

			];
			$scope.model = {};
			$scope.payment = () => {
				console.log($scope.model);
			};

			// Get data
			//http.request('./data/promoterek.json')
			//.then(response => {
	//
			//	// Set data, and apply change
			//	$scope.data = response;
			//	$scope.$applyAsync();
			//})
			//.catch(e => $timeout(() => { alert(e); }, 50));
		}
	]);

})(window, angular);