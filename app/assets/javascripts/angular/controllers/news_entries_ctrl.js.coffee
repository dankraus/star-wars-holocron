@NewsEntriesCtrl = @app.controller 'NewsEntriesCtrl', ["$scope", "$http", ($scope, $http) ->
  $scope.newsEntries = []
  $scope.defaultLimit = 50

  loadNewsEntries = ->
    $http.get("news_entries.json", {
      params: { limit: $scope.defaultLimit }
    }).success((data, status, headers, config) ->
      angular.forEach data, (value) ->
        $scope.newsEntries.push value
    )

  loadNewsEntries()
]