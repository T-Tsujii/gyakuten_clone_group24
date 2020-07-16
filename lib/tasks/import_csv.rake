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

    # rake import_csv:questions コマンドで
    # question_dataファイルからデータベースにインポートできます
    desc "Quiestion CSVデータのインポート"
    task questions: :environment do
        # インポートしたオブジェクト（Rails動画教材）を変数listに代入
        list = Import.csv_data(path: 'db/csv_data/question_data.csv')
        Question.create!(list)
    end
    
    # rake import_csv:ruby_rails_texts コマンドで
    # text_dataファイルからデータベースにインポートできます
    desc "RubyRailsText CSVデータのインポート"
    task ruby_rails_texts: :environment do
        # インポートしたオブジェクト（RubyRailsテキスト教材）を変数listに代入
        list = Import.csv_data(path: 'db/csv_data/text_data.csv')
        RubyRailsText.create!(list)
    end
    
end

