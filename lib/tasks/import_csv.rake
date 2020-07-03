require "import.rb"

namespace :import_csv do
    # rake import_csv:aws_texts コマンドで
    # aws_text_dataファイルからデータベースにインポートできます
    desc "AwsText CSVデータのインポート"
    task aws_texts: :environment do
        # インポートしたオブジェクト（awsテキスト教材）を変数listに代入
        list = Import.csv_data(path: 'db/csv_data/aws_text_data.csv')
        AwsText.create!(list)
    end

    # rake import_csv:movies コマンドで
    # movie_dataファイルからデータベースにインポートできます
    desc "Movie CSVデータのインポート"
    task movies: :environment do
        # インポートしたオブジェクト（Rails動画教材）を変数listに代入
        list = Import.csv_data(path: 'db/csv_data/movie_data.csv')
        Movie.create!(list)
    end
end

