# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
 ActiveSupport::Inflector.inflections(:en) do |inflect|
   inflect.acronym 'RESTful'
   inflect.irregular 'discrete_area_of_development', 'discrete_areas_of_development'
   inflect.irregular 'area_of_focus', 'areas_of_focus'
   inflect.irregular 'statement_of_achievement', 'statements_of_achievement'
 end
