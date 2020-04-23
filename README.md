
<!-- README.md is generated from README.Rmd. Please edit that file -->

# openPsychData

<!-- badges: start -->

<!-- badges: end -->

openPsychDataは，心理学に関するオープンデータを取得して，Rに読み込むためのパッケージです。まだ開発途中で，本パッケージの使用に関わるトラブルについては責任は負えませんので，予めご了承ください（一緒に開発してくれる人がいれば，連絡ください）。

## インストール

openPsychDataは，Rコンソールに以下を打ち込むことで，[GitHub](https://github.com)からインストールできます。

``` r
# install.packages("devtools")
devtools::install_github("ykunisato/openPsychData")
```

## 使い方

現状では，[Open-Source Psychometrics
Project](https://openpsychometrics.org/_rawdata/)のデータをダウンロードして，Rにデータとして読み込みができます。[Open-Source
Psychometrics
Project](https://openpsychometrics.org/_rawdata/)をみて，以下のGoogleスプレッドシートのdataset\_name
in
openPsychDataの列から，必要なデータセットの「dataset\_name」を確認ください。利用可能なデータセットは順次増やしていく予定です。

[openPsychDataのGoogleスプレッドシート](https://docs.google.com/spreadsheets/d/1FHiqq7q5iItaU8KfYZTo_8bKhUGM_yGwMiklx8GiMXI/edit?usp=sharing)

### データの読み込み

データを読み込む場合は，load\_openPsyData()を使ってください。「dataset\_name」に使いたいデータの名前を指定ください。もし，まだカレントディレクトリにデータをダウンロードしていない場合は，自動的にダウンロードします（カレントディレクトリに「dataset\_name」と同じ名前のディレクトリを作成して，データを保存します）。
codebookをTRUEにしておくと変数の説明をしたcodebookを開きます。

    library(openPsychData)
    data <- load_openPsyData(dataset_name = "16PF", codebook = TRUE)
