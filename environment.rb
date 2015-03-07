$:.push File.dirname(__FILE__)
require 'aws'

DB = AWS::DynamoDB.new
EC2 = AWS::EC2.new

TABLES = {}

TABLES['environments'] = DB.tables['environments'].load_schema

require 'models'