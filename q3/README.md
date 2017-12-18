Rockall Market JSON Parser
==========================

Execution
---------

ruby -Ilib market_data.rb http://alert-generation-question.rockall-laser.com/ffc9c8e9-f929-46db-ac5c-7c483c647568/marketdata.json

Error Handling
--------------
- Input validations fom cli
- JSON format Validation
- Any bad data as null entry for json data received is logged

Testing
-------

ruby -Ilib tests/test*.rb