namespace :import_csv do
    # rake import_csv:aws_texts コマンドで
    # aws_text_dataファイルからデータベースにインポートできます
    desc "AwsText CSVデータのインポート"
    task aws_texts: :environment do
        AwsText.import('db/csv_data/aws_text_data.csv')
    end
end
