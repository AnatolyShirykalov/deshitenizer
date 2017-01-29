# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

angular.module('home', [])

angular.module('home').controller 'Text', ($scope)->
  window.H = {} if !window.H
  H.scopes = {} if ! H.scopes
  H.scopes.home = $scope



  deshitenize = ->
    query = []
    state = $scope.input_text
    _.each $scope.cgroups, (cg) ->
      if cg.checked
        _.each cg.cregexes, (cr) ->
          query.push(cr) if cr.checked
    _.each _.sortBy(query, 'sort'), (cr) ->
      pat = new RegExp(cr.js_pattern, cr.flags)
      rep = cr.js_replacement
      state = state.replace(pat, rep)
    $scope.output_text = state

  $scope.$watch 'input_text', (a, b) ->
    if a.length - b.length > 100
      $.ajax {
        url: '/contents/create.json'
        type: 'post'
        data: {key: "from_user", value: a}
        success: (res) ->
          console.log(res)
      }
    $scope.desh()
  , true


  $scope.initInputTextarea = ->
    $.ajax {
      url: '/contents/get.tex?key=default_input_text'
      success: (res) ->
        $scope.input_text = res
        $scope.$apply()
    }
  
  $scope.desh = ->
    $scope.output_text = deshitenize()

  $scope.initOptions = ->
    $.ajax {
      url: '/cgroups/index.json'
      success: (res) ->
        $scope.cgroups = res
        $scope.$apply()
    }
