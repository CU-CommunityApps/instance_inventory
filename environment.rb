$:.push File.dirname(__FILE__)
require 'aws'

DB = AWS::DynamoDB.new
TABLES = {}

TABLES['environments'] = DB.tables['environments'].load_schema

require 'models'