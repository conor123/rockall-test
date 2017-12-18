Rockall Market JSON Parser
==========================
ruby 2.3.4
 
Execution
---------

ruby -Ilib market_data.rb http://alert-generation-question.rockall-laser.com/ffc9c8e9-f929-46db-ac5c-7c483c647568/marketdata.json

Error Handling
--------------
- Input validations fom cli
- JSON format Validation
- Any bad data (not present) entry for json data received is logged

Testing
-------

rake test

Comments
--------
- price is digit to 4 decimal places, ideally price wil be in cents or thousands of cents and recomputed as integers; floats are not good price data types. I have not validated to 4 places but kept as a string. The code for decimal places would be:

'%.4f' % 2.3465
=> "2.3465"
