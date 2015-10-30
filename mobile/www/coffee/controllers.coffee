angular.module('starter.controllers', ['UserSession'])

.controller('AppCtrl', ($scope, $ionicModal, $timeout, $ionicPopup, UserSession) ->
  # Form data for the login modal
  $scope.user = {}

  # Create the login modal that we will use later
  $ionicModal.fromTemplateUrl('templates/login.html', scope: $scope).then (modal) ->
    $scope.modal = modal
 
  # Triggered in the login modal to close it
  $scope.closeLogin = ->
    $scope.modal.hide()

  # Open the login modal
  $scope.login = ->
    $scope.modal.show()

  # Perform the login action when the user submits the login form
  $scope.doLogin = ->
    userSession = new UserSession({user: $scope.user})
    userSession.$save( (data) ->
      window.localStorage('userId') = data.id
      window.localStorage('userName') = data.name
      $location.path('/app')
    , (error) ->
      error = error['data']['error'] || error.data.join('. ')
      confirmPopup = $ionicPopup.alert({
        title: 'Login Failed',
        template: error
        })

    )
)

.controller('PlaylistsCtrl', ($scope) ->
  $scope.playlists = [
    {
      title: 'Reggaecoffee'
      id: 1
    }
    {
      title: 'Chill'
      id: 2
    }
    {
      title: 'Dubstep'
      id: 3
    }
    {
      title: 'Indie'
      id: 4
    }
    {
      title: 'Rap'
      id: 5
    }
    {
      title: 'Cowbell'
      id: 6
    }
  ]
)

.controller 'PlaylistCtrl', ($scope, $stateParams) ->
