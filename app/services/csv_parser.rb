require 'csv'

class CsvParser
  def initialize(csv:, chosen_values: [])
    @csv = csv
    @chosen_values = chosen_values
  end

  def call
    scrap_csv
  end

  private

  def scrap_csv
    final_array  
  end

  def final_array
    if @chosen_values.blank?
      array_of_hash.map do |hash|
        {
          "#{hash.keys[0]}": hash.values[0],
          "#{hash.keys[1]}": hash.values[1],
          "#{hash.keys[2]}": hash.values[2],
          "#{hash.keys[3]}": hash.values[3],
          "#{hash.keys[4]}": hash.values[4]
        }
      end
    else
      array_of_hash.inject([]) do |acc, hash|
        acc << {
          "#{@chosen_values[0].strip}": hash["#{@chosen_values[0].strip}"],
          "#{@chosen_values[1].strip}": hash["#{@chosen_values[1].strip}"]
        }
      end
    end
  end

  def array_of_hash
    doc_csv.map {|row| row.to_hash }
  end

  def doc_csv
    file_path = ActiveStorage::Blob.service.send(:path_for, @csv.file.key)
    CSV.foreach(file_path, encoding:'iso-8859-1:utf-8', headers: true)
    #CSV.parse(@csv, headers: true, encoding: "ISO8859-1:utf-8")
  end
end
