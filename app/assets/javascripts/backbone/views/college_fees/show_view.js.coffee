Warranty.Views.CollegeFees ||= {}

class Warranty.Views.CollegeFees.ShowView extends Backbone.View
  template: JST["backbone/templates/college_fees/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
