jQuery ->  
  jQuery("#all_registration_year").change -> CC.get_groups_years "year",@,'all_registration_group'
  jQuery("#attendence_child_year").change -> CC.get_groups_years "year",@,'attendence_child_group'
  jQuery("#attendence_child_group").change -> CC.get_groups_years "group",@,'attendence_child_subject'
