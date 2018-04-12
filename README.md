# Circle CI を始めてみたので記録

Base repository of test on <a href="https://circleci.com/">CircleCI</a>

[![CircleCI](https://circleci.com/gh/officel/how2circleci/tree/master.svg?style=shield&circle-token=bbf4aa8b174ccd505bdc90c672400e0f4652cf2a)](https://circleci.com/gh/officel/how2circleci/tree/master)

# 作業履歴

1. create new repository on github.com
  * 新しいリポジトリを作る（コレ）
2. add project on circleci.com
  * Circle CI 側でプロジェクトにコレを追加する
  * 設定ももろもろやっておくといいかも
    * 通知設定（一旦全部通知させるとか）
    * slack 連携
3. create circle.yml
  * sample をコピーして不要なものを削ったけど不要な空のセクションを残すとエラーになるっぽい
  * test セクションに override で何か書かないとテストがないってエラーになるっぽい
4. add serverspec with mini spec
  * gem install serverspec
  * serverspec-init
    * 1:Unix, 2:Exec(Local),
  * spec/localhost/sample_spec.rb をリネームして書き換え
  * rake -T
  * rake spec
5. add awspec
  * check aws cli
  * create new IAM user on AWS. ( no permissions. so test error )
  * attach policy
  * gem install awspec
  * Rakefile, spec_helper.rb の書き換え
  * テスト用に AMI のスペックを作成
  * CircleCI用にIAMユーザ作って、ポリシーも絞ってあるけど、定期的にチェックはしたほうがいいかな。。。  
6. challenge github Projects
  * create projects
  * create column
  * create note
  * change issue
  * comment issue & close
  * test git commit message in issues number
  * OMT: add CircleCI status badges

# 2.0 作業履歴

* circle.yml -> .circleci/config.yml
* ruby image にピーキーなバグがあるので、使用イメージに注意
* gem 'rake' >> Gemfile
