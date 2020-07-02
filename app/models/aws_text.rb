class AwsText < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true

    def self.import(path)
        list = []
        CSV.foreach(path, headers: true) do |row|
            list << {
                title: row["title"],
                content: row["content"],
            }
        end
        begin
            puts "インポート開始"
            AwsText.create!(list)
            puts "インポートに成功しました"
        rescue ActiveModel::UnknownAttributeError => invalid
            puts "インポートに失敗しました:#{invalid}"
        end
    end
end
