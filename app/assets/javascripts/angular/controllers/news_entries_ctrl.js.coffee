@NewsEntriesCtrl = @app.controller 'NewsEntriesCtrl', ["$scope", "$http", ($scope, $http) ->
  $scope.newsEntries = []

  loadNewsEntries = ->
    $http.get("news_entries.json").success((data, status, headers, config) ->
      angular.forEach data, (value) ->
        $scope.newsEntries.push value
    )

  loadNewsEntries()
]