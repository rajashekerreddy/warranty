Warranty.Views.CollegeFees ||= {}

class Warranty.Views.CollegeFees.IndexView extends Backbone.View
  template: JST["backbone/templates/college_fees/index"]

  initialize: () ->
    @options.collegeFees.bind('reset', @addAll)

  addAll: () =>
    @options.collegeFees.each(@addOne)

  addOne: (collegeFee) =>
    view = new Warranty.Views.CollegeFees.CollegeFeeView({model : collegeFee})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(collegeFees: @options.collegeFees.toJSON() ))
    @addAll()

    return this
