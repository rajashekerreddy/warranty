Warranty.Views.CollegeFees ||= {}

class Warranty.Views.CollegeFees.CollegeFeeView extends Backbone.View
  template: JST["backbone/templates/college_fees/college_fee"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
