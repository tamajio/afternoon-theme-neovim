; extends

(variable_declarator
  name: (identifier) @variable.definition
  (#set! "priority" 110))

(assignment_expression
  left: (identifier) @variable.assignment)
