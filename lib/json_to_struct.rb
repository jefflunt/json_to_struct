require 'oj'

# JsonToStruct is a module that converts a JSON string to a nested struct
#
# usage:
#    > s =  JsonToStruct.load(
#             <<~JSON
#              {
#                "employee": {
#                  "name":"Hal",
#                  "salary":56000,
#                  "married":false
#                }
#              }
#             JSON
#           )
#   => #<struct employee=
#        #<struct name="Hal", salary=56000, married=false>>
#    > s.employee.name
#   => 'Hal'
module JsonToStruct
  def self.load(json_string)
    json = Oj.load(json_string, symbol_keys: true)
    _load_helper(json)
  end

  def self._load_helper(json)
    case json
    when Hash
      struct = ::Struct.new(*json.keys)
      struct.new(*json.values.map { |v| _load_helper(v) })
    when Array
      json.map { |v| _load_helper(v) }
    else
      json
    end
  end
end

