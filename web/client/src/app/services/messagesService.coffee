angular.module 'pounce'
  .service 'messagesService', () ->
    'ngInject'
    console.log "In messagesService"
    clientMessages1 = [
      {
        id: 1
        title: 'Adam Agent'
        time: moment().subtract(5, 'minutes').toISOString()
        type: 'message'
        body: 'Hey @Stephanie, I scheduled some showings for us this Saturday. We will have some great places to look at! See you at 1 PM Saturday.'
      }
      {
        id: 2
        title: '#showing'
        time: moment().subtract(10, 'minutes').toISOString()
        type: 'showing'
        body: '123 Main St., Lakewood - 1:00 PM Saturday by @Adam'
      }
      {
        id: 3
        title: '#showing'
        time: moment().subtract(9, 'minutes').toISOString()
        type: 'showing'
        body: '8367 Market St., Lakewood - 2:00 PM Saturday by @Adam'
      }
      {
        id: 4
        title: '#showing'
        time: moment().subtract(7, 'minutes').toISOString()
        type: 'showing'
        body: '375 Applegate Ave., Lakewood - 3:00 PM Saturday by @Adam'
      }
      {
        id: 5
        title: 'Stephanie Folsom'
        time: moment().subtract(1, 'hours').toISOString()
        type: 'message'
        body: '@Adam, can we see some more places this Saturday? I was really a fan of the brick house we saw last weekend.'
      }
    ]

    clientMessages2 = [
      {
        id: 6
        title: 'Adam Agent'
        time: moment().subtract(5, 'minutes').toISOString()
        type: 'message'
        body: '@Erik, thanks for changing your priorities. I will update our home searches based on these changes.'
      }
      {
        id: 7
        title: '#priorities'
        time: moment().subtract(20, 'minutes').toISOString()
        type: 'priority'
        body: 'Moved \'Large Backyard\' from 2nd to 4th'
      }
      {
        id: 8
        title: '#priorities'
        time: moment().subtract(25, 'minutes').toISOString()
        type: 'priority'
        body: 'Moved \'4 Bedrooms\' from 2nd to 1st'
      }
      {
        id: 9
        title: 'Erik Polk'
        time: moment().subtract(30, 'minutes').toISOString()
        type: 'message'
        body: 'Well, after seeing the houses today, I think we really need 4 bedrooms. I am going to update our priorities.'
      }
      {
        id: 10
        title: 'Adam Agent'
        time: moment().subtract(1, 'hours').toISOString()
        type: 'message'
        body: '@Erik and @Beth, now that you have had some time to think about the homes we saw, are your priorities still in line with what you are looking for?'
      }
    ]

    clientMessages3 = [
      {
        id: 11
        title: 'Adam Agent'
        time: moment().subtract(5, 'minutes').toISOString()
        type: 'message'
        body: '@Carrie and @Andy, it was a pleasure meeting with you today for our initial consult. I have entered all of your information and home priorities here. Please take a look and make sure that everything is correct.'
      }
      {
        id: 12
        title: '#priorities'
        time: moment().subtract(20, 'minutes').toISOString()
        type: 'priority'
        body: 'New Priority \'Updated Kitchen\' moved to 1st priority.'
      }
      {
        id: 13
        title: '#info'
        time: moment().subtract(25, 'minutes').toISOString()
        type: 'info'
        body: 'New Desired Price Range: $320,000-$350,000.'
      }
      {
        id: 14
        title: '#info'
        time: moment().subtract(30, 'minutes').toISOString()
        type: 'info'
        body: 'New Bedroom Count: 3-4 BR'
      }
      {
        id: 15
        title: '#info'
        time: moment().subtract(1, 'hours').toISOString()
        type: 'info'
        body: 'New Bathroom Count: 2-3 BA'
      }
    ]

    all: (params) ->
      console.log "In messagesService with params: ", params.clientId
      if params.clientId == '1'
        clientMessages1
      else if params.clientId == '2'
        clientMessages2
      else
        clientMessages3

