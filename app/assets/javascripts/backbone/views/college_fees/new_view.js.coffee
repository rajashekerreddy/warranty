Warranty.Views.CollegeFees ||= {}

class Warranty.Views.CollegeFees.NewView extends Backbone.View
  template: JST["backbone/templates/college_fees/new"]

  events:
    "submit #new-college_fee": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (college_fee) =>
        @model = college_fee
        window.location.hash = "/#{@model.id}"

      error: (college_fee, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
