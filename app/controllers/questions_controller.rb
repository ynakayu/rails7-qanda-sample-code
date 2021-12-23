class QuestionsController < ApplicationController
  # 質問一覧表示
  def index
  end
  
  # 質問詳細ページ表示
  def show
  end
  
  # 質問の作成
  def new
    @question = Question.new
  end
  
  # 質問の登録
  def create
    # Questionモデルを初期化
    @question = Question.new(question_params)
    # QuestionモデルをDBへ保存
    @question.save
    # showへリダイレクト
    redirect_to @question
  end
  
  # 質問の編集
  def edit
  end
  
  # 質問の更新
  def update
  end
  
  # 質問の削除
  def destroy
  end
  
  private
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
end
