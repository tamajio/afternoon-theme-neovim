; extends

(variable_declaration
  (variable_list
    name: (identifier) @variable.definition)
  (#set! "priority" 110))

(variable_declaration
  (assignment_statement
    (variable_list
      name: (identifier) @variable.definition))
  (#set! "priority" 110))

(for_numeric_clause
  name: (identifier) @variable.definition
  (#set! "priority" 110))

(for_generic_clause
  (variable_list
    name: (identifier) @variable.definition)
  (#set! "priority" 110))

(assignment_statement
  (variable_list
    name: (identifier) @variable.assignment))
