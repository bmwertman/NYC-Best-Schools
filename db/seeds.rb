SchoolZone.delete_all

require 'csv'
CSV.foreach(File.path(Rails.root.join('lib', "ES_Zones_2013-2014.csv"))) do |column|
  SchoolZone.create({
    shape_length: column[7],
    shape_area: column[8],
    dbn_num: column[10]
    })
end

CSV.foreach(File.path(Rails.root.join('lib', "primary_schools.csv"))) do |column|
  sz = SchoolZone.find_by_dbn_num(column[0])
  if sz
    sz.update_attributes({
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
end

SchoolZone.all.each { |zone| zone.destroy unless zone.school_name }

