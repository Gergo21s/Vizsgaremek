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
			.state('reservation', {
				url: '/reservation',
				parent: 'root',
				templateUrl: './html/reservation.html',
				controller: 'reservationController'
			})
			.state('programmes', {
				url: '/programmes',
				parent: 'root',
				templateUrl: './html/programmes.html',
				controller: 'programmesController'
			})
			.state('promoters', {
				url: '/promoters',
				parent: 'root',
				templateUrl: './html/promoters.html',
				controller: 'promotersController'
			})
			.state('relationship', {
				url: '/relationship',
				parent: 'root',
				templateUrl: './html/relationship.html',
				controller: 'relationshipController'
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

	// Reservation controller
  .controller('reservationController', [
    '$scope',
    function($scope) {
			console.log('Reservation controller...');
		}
	])

	// Programmes controller
  .controller('programmesController', [
    '$scope',
    function($scope) {
			console.log('Programmes controller...');
		}
	])

	// Promoters controller
  .controller('promotersController', [
    '$scope',
    function($scope) {
			console.log('Promoters controller...');
		}
	])

	// Relationship controller
  .controller('relationshipController', [
    '$scope',
    function($scope) {
			console.log('Relationship controller...');
		}
	]);

})(window, angular);