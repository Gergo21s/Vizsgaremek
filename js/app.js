(function(window, angular) {

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
					},
					'user@root': {
						templateUrl: './html/user.html',
						controller: 'userController'
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
				templateUrl: './html/user_construction.html',
				controller: 'kapcsolatController'
			})
			.state('hazirend', {
				url: '/hazirend',
				parent: 'root',
				templateUrl: './html/hazirend.html',
				controller: 'hazirendController'
			})
						
			.state('jegyfoglalas', {
				url: '/jegyfoglalas',
				parent: 'root',
				templateUrl: './html/jegyfoglalas.html',
				controller: 'jegyfoglalasController'
			})
			
			.state('informacio', {
				url: '/informacio',
				parent: 'root',
				templateUrl: './html/informacio.html',
				controller: 'informacioController'
			})

			.state('regisztracio', {
				url: '/regisztracio',
				parent: 'root',
				templateUrl: './html/regisztracio.html',
				controller: 'regisztracioController'
			});

					
      $urlRouterProvider.otherwise('/');
    }
  ])

  // Application run
  .run([
		'$rootScope',
    'trans',
    ($rootScope, trans) => {

      // Transaction events
			trans.events();

			// Set user
			$rootScope.user = {
				id: null,
				first_name: null, 
				last_name: null, 
				email: null, 
				phone: null, 
				post_code: null, 
				city: null, 
				address: null, 
				date: null
			};

			// Logout
			$rootScope.logout = () => {

				if (confirm('Biztos kijelenkezik?')) {
					
					// Set user
					Object.keys($rootScope.user).forEach((key) => {
						$rootScope.user[key] = null;
					});
					$rootScope.$applyAsync();
				}
			}
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

	// User controller
  .controller('userController', [
		'$rootScope',
  	'$scope',
		'http',
		'util',
    function($rootScope, $scope, http, util) {
			
			// Set model
			$scope.model = {
				first_name: null, 
				last_name: null, 
				email: null, 
				password: null,
				email2: localStorage.getItem('userEmailAddress'), 
				password2: null,
				phone: null, 
				post_code: null, 
				city: null, 
				address: null, 
				date: null,
				roole: null
			};

			// Reset model
			let reset = () => {
				Object.keys($scope.model).forEach((key) => {
					if (key === 'email2')
								$scope.model[key] = localStorage.getItem('userEmailAddress');
					else 	$scope.model[key] = null;
				});
				$scope.$applyAsync();
			};

			// Login
			$scope.login = () => {

				// Set arguments
				let args = {
					email: $scope.model.email2,
					password: $scope.model.password2
				}

				// Reset model
				reset();

				// Http request
				http.request({
					url: './php/login.php',
					data: args
				})
				.then(response => {

					// Set born date
					response.date = moment(response.date).toDate();

					// Save in local storige email address
					localStorage.setItem('userEmailAddress', args.email);

					// Set user
					Object.keys($rootScope.user).forEach((key) => {
						if (key === 'email')
									$scope.user[key] = args.email;
						else 	$scope.user[key] = response[key];
					});
					$rootScope.$applyAsync();
				})
				.catch(e => $timeout(() => { alert(e); }, 50));
			} 

			// Register
			$scope.regisztral = () => {

				// Set arguments
				let args = 	util.objFilterByKeys($scope.model, [
											'email2', 'password2', 'roole'
										], false);
				
				// Convert born day
				args.date = moment(args.date).format('YYYY-MM-DD');						
				
				// Reset model
				reset();

				// Http request
				http.request({
					url: './php/registration.php',
					data: args
				})
				.then(response => {

					// Set user identifier
					args.id = response.lastInsertId;

					// Set born date
					args.date = moment(args.date).toDate();

					// Set user
					Object.keys($rootScope.user).forEach((key) => {
						$scope.user[key] = args[key];
					});
					$rootScope.$applyAsync();
				})
				.catch(e => $timeout(() => { alert(e); }, 50));
			}
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



// Regisztráció controller
.controller('regisztracioController', [
    	'$scope',
		'$timeout',
		'http',
		'util',
    function($scope, $timeout, http, util) {
			
			// Set data index, and model for input
			$scope.dataIndex = null;
			$scope.model = {};

			// Request to the server
			http.request({
				url: './php/registration.php',
				data: args
			})
			.then(response => {

				$timeout(() => { 
					alert(response); 
				}, 50);
			})
			.catch(e => $timeout(() => { alert(e); }, 50));
			
			// Get modal dialog
			let modalDialog 	= document.querySelector('#regisztracioModal'),
					modalInstance	= bootstrap.Modal.getOrCreateInstance('#regisztracioModal'); 
			
			// Set event close modal dialog
			modalDialog.addEventListener('hidden.bs.modal', function () {

				// Reset model
				Object.keys($scope.model).forEach(key => {
					$scope.model[key] = null;
				});

				// Reset data index
				$scope.dataIndex = null;
			});

			// Registration
			$scope.regisztralas = (event) => {
				let btn = event.currentTarget;
				$scope.dataIndex = parseInt(btn.dataset.index);
				$scope.model.reg = $scope.data[$scope.dataIndex].id;
				$scope.$applyAsync();
			};

			// Pay
			$scope.regisztral = () => {
				
				// Get neccesary input properties
				let args = util.objFilterByKeys($scope.model, [
					'roole',
					'table'
				], false);

				// Set type identifier  ???

				args.type_id = $scope.data[$scope.dataIndex].id;


				
				// Close modal instance
				modalInstance.hide();
			};
		}
	])


	// Jegyfoglalas controller
	.controller('jegyfoglalasController', [
			'$scope',
			'$timeout',
			'http',
			'util',
		function($scope, $timeout, http, util) {
				
				// Set data index, and model for input
				$scope.dataIndex = null;
				$scope.model = {};
	
				// Get data
				http.request('./php/ticketreservation_type.php')
				.then(response => {
	
					// Set data, and apply change
					$scope.data = response;	
					$scope.$applyAsync();
				})
				.catch(e => $timeout(() => { alert(e); }, 50));
	
				// Get modal dialog
				let modalDialog 	= document.querySelector('#jegyfoglalasiUrlap'),
						modalInstance	= bootstrap.Modal.getOrCreateInstance('#jegyfoglalasiUrlap'); 
				
				// Set event close modal dialog
				modalDialog.addEventListener('hidden.bs.modal', function () {
	
					// Reset model
					Object.keys($scope.model).forEach(key => {
						$scope.model[key] = null;
					});
	
					// Reset data index
					$scope.dataIndex = null;
				});
	
				// Ticketreservation
				$scope.jegyfoglalas = (event) => {
					let btn = event.currentTarget;
					$scope.dataIndex = parseInt(btn.dataset.index);
					//Mi jelenjen meg abban a mezőben, amelyre mutatunk, 
					//itt amelyik programra vesszük a jegyet. 
					$scope.model.ticket = $scope.data[$scope.dataIndex].date;
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
						url: './php/ticketreservation.php',
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

		// Informacio controller
	.controller('informacioController', [
		'$scope',
		'$timeout',
		'http',
		'util',
	function($scope, $timeout, http, util) {
			
			// Set data index, and model for input
			$scope.dataIndex = null;
			$scope.model = {};

			// Get data
			http.request('./php/information.php')
			.then(response => {

				// Set data, and apply change
				$scope.data = response;	
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));

			
			// Information
			$scope.info = (event) => {
				let btn = event.currentTarget;
				$scope.dataIndex = parseInt(btn.dataset.index);
				//Mi jelenjen meg abban a mezőben, amelyre mutatunk, 
				//itt amelyik programinfóját megnézzük. 
				$scope.model.info = $scope.data[$scope.dataIndex].date;
				$scope.$applyAsync();
			};
			

		}
	])

	// Programok controller
  .controller('programokController', [
    	'$scope',
		'$timeout',
		'http',
		'util',
    function($scope, $timeout, http, util) {
			
			// Get data
			http.request('./php/programs.php')

			.then(response => {

				// Set data, and apply change
				$scope.data = response;
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));

			
		}
	])


	// Promoter controller
	.controller('promoterekController', [
		'$scope',
		'$timeout',
		'http',
		'util',
	function($scope, $timeout, http, util) {
			
			// Get data
			http.request('./php/promoters.php')
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
			http.request('./data/hazirend.json')
			.then(response => {
		
				// Set data, and apply change
				$scope.data = response;
				$scope.$applyAsync();
			})
			.catch(e => $timeout(() => { alert(e); }, 50));
			}
		])

	//Kapcsolat controller
	.controller('kapcsolatController', [
		'$scope',
		'$timeout',
		'http',
		function($scope, $timeout, http) {
			
			}
		])
})
(window, angular);