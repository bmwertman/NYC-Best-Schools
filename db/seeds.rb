# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  require 'csv'
CSV.foreach(File.path(Rails.root.join('lib', "ES_Zones_2013-2014.csv"))) do |column|
  SchoolZone.create({
    shape_length: column[8],
    shape_area: column[9]
    })
end

CSV.foreach(File.path(Rails.root.join('lib', "primary_schools.csv"))) do |column|
  SchoolZone.create({
    district_num: column[1],
    school_name: column[2],
    school_level: column[3],
    overall_score: column[4],
    overall_grade: column[6],
    progress_score: column[7],
    progress_grade: column[9],
    performance_score: column[10],
    performance_grade: column[12],
    environment_score: column[13],
    environment_grade: column[14]
    })
end

