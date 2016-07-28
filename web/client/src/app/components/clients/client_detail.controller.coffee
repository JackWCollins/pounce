angular.module 'pounce'
  .controller 'ClientController', ($timeout, webDevTec, toastr, messageService, $stateParams) ->
    'ngInject'
    vm = this

    vm.clients = []
    vm.showingCount = [1..5]
    vm.messages = messageService.all(clientId: $stateParams.clientId)
    vm.showings = [
      {
        title: "123 Main St., Lakewood, CO 80226",
        time: "Today at noon",
        notes: "This 3 bedroom, 2 bath has an excellent backyard for your dogs!"
      },
      {
        title: "456 Stout St., Denver, CO 80228",
        time: "Today at 1 PM",
        notes: "4 Bedroom and 3 Baths! Plenty of room for your family!"
      },
    ]

    return
