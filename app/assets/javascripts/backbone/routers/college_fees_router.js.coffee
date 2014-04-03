class Warranty.Routers.CollegeFeesRouter extends Backbone.Router
  initialize: (options) ->
    @collegeFees = new Warranty.Collections.CollegeFeesCollection()
    @collegeFees.reset options.collegeFees

  routes:
    "new"      : "newCollegeFee"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCollegeFee: ->
    @view = new Warranty.Views.CollegeFees.NewView(collection: @college_fees)
    $("#college_fees").html(@view.render().el)

  index: ->
    @view = new Warranty.Views.CollegeFees.IndexView(college_fees: @college_fees)
    $("#college_fees").html(@view.render().el)

  show: (id) ->
    college_fee = @college_fees.get(id)

    @view = new Warranty.Views.CollegeFees.ShowView(model: college_fee)
    $("#college_fees").html(@view.render().el)

  edit: (id) ->
    college_fee = @college_fees.get(id)

    @view = new Warranty.Views.CollegeFees.EditView(model: college_fee)
    $("#college_fees").html(@view.render().el)
