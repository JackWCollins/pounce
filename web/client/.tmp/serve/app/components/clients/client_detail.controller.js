(function() {
  angular.module('pounce').controller('ClientController', function($timeout, webDevTec, toastr, messageService, $stateParams) {
    'ngInject';
    var vm;
    vm = this;
    vm.clients = [];
    vm.showingCount = [1, 2, 3, 4, 5];
    vm.messages = messageService.all({
      clientId: $stateParams.clientId
    });
    vm.showings = [
      {
        title: "123 Main St., Lakewood, CO 80226",
        time: "Today at noon",
        notes: "This 3 bedroom, 2 bath has an excellent backyard for your dogs!"
      }, {
        title: "456 Stout St., Denver, CO 80228",
        time: "Today at 1 PM",
        notes: "4 Bedroom and 3 Baths! Plenty of room for your family!"
      }
    ];
  });

}).call(this);

//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImNvbXBvbmVudHMvY2xpZW50cy9jbGllbnRfZGV0YWlsLmNvbnRyb2xsZXIuY29mZmVlIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQUEsT0FBTyxDQUFDLE1BQVIsQ0FBZSxRQUFmLENBQ0UsQ0FBQyxVQURILENBQ2Msa0JBRGQsRUFDa0MsU0FBQyxRQUFELEVBQVcsU0FBWCxFQUFzQixNQUF0QixFQUE4QixjQUE5QixFQUE4QyxZQUE5QztJQUM5QjtBQUFBLFFBQUE7SUFDQSxFQUFBLEdBQUs7SUFFTCxFQUFFLENBQUMsT0FBSCxHQUFhO0lBQ2IsRUFBRSxDQUFDLFlBQUgsR0FBa0I7SUFDbEIsRUFBRSxDQUFDLFFBQUgsR0FBYyxjQUFjLENBQUMsR0FBZixDQUFtQjtNQUFBLFFBQUEsRUFBVSxZQUFZLENBQUMsUUFBdkI7S0FBbkI7SUFDZCxFQUFFLENBQUMsUUFBSCxHQUFjO01BQ1o7UUFDRSxLQUFBLEVBQU8sa0NBRFQ7UUFFRSxJQUFBLEVBQU0sZUFGUjtRQUdFLEtBQUEsRUFBTyxpRUFIVDtPQURZLEVBTVo7UUFDRSxLQUFBLEVBQU8saUNBRFQ7UUFFRSxJQUFBLEVBQU0sZUFGUjtRQUdFLEtBQUEsRUFBTyx3REFIVDtPQU5ZOztFQVBnQixDQURsQztBQUFBIiwiZmlsZSI6ImNvbXBvbmVudHMvY2xpZW50cy9jbGllbnRfZGV0YWlsLmNvbnRyb2xsZXIuanMiLCJzb3VyY2VSb290IjoiL3NvdXJjZS8iLCJzb3VyY2VzQ29udGVudCI6WyJhbmd1bGFyLm1vZHVsZSAncG91bmNlJ1xuICAuY29udHJvbGxlciAnQ2xpZW50Q29udHJvbGxlcicsICgkdGltZW91dCwgd2ViRGV2VGVjLCB0b2FzdHIsIG1lc3NhZ2VTZXJ2aWNlLCAkc3RhdGVQYXJhbXMpIC0+XG4gICAgJ25nSW5qZWN0J1xuICAgIHZtID0gdGhpc1xuXG4gICAgdm0uY2xpZW50cyA9IFtdXG4gICAgdm0uc2hvd2luZ0NvdW50ID0gWzEuLjVdXG4gICAgdm0ubWVzc2FnZXMgPSBtZXNzYWdlU2VydmljZS5hbGwoY2xpZW50SWQ6ICRzdGF0ZVBhcmFtcy5jbGllbnRJZClcbiAgICB2bS5zaG93aW5ncyA9IFtcbiAgICAgIHtcbiAgICAgICAgdGl0bGU6IFwiMTIzIE1haW4gU3QuLCBMYWtld29vZCwgQ08gODAyMjZcIixcbiAgICAgICAgdGltZTogXCJUb2RheSBhdCBub29uXCIsXG4gICAgICAgIG5vdGVzOiBcIlRoaXMgMyBiZWRyb29tLCAyIGJhdGggaGFzIGFuIGV4Y2VsbGVudCBiYWNreWFyZCBmb3IgeW91ciBkb2dzIVwiXG4gICAgICB9LFxuICAgICAge1xuICAgICAgICB0aXRsZTogXCI0NTYgU3RvdXQgU3QuLCBEZW52ZXIsIENPIDgwMjI4XCIsXG4gICAgICAgIHRpbWU6IFwiVG9kYXkgYXQgMSBQTVwiLFxuICAgICAgICBub3RlczogXCI0IEJlZHJvb20gYW5kIDMgQmF0aHMhIFBsZW50eSBvZiByb29tIGZvciB5b3VyIGZhbWlseSFcIlxuICAgICAgfSxcbiAgICBdXG5cbiAgICByZXR1cm5cbiJdfQ==
