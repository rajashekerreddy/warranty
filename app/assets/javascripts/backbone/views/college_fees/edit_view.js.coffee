Warranty.Views.CollegeFees ||= {}

class Warranty.Views.CollegeFees.EditView extends Backbone.View
  template : JST["backbone/templates/college_fees/edit"]

  events :
    "submit #edit-college_fee" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (college_fee) =>
        @model = college_fee
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
