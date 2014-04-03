class Warranty.Models.CollegeFee extends Backbone.Model
  paramRoot: 'college_fee'

  defaults:
    bill_date_time: null
    hall_no: null
    last_paid_amt: null
    this_time_pay: null
    till_now_paid: null

class Warranty.Collections.CollegeFeesCollection extends Backbone.Collection
  model: Warranty.Models.CollegeFee
  url: '/college_fees'
