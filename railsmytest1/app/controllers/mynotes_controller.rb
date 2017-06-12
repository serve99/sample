class MynotesController < ApplicationController
  def hoge
    @search = MynotesText.new
  end

  def hoge_res
    @search = MynotesText.new(params.require(:mynotes_text).permit(:keyword1, :keyword2))

    if @search.valid?
      render plain: '[' + @search.keyword1 + '][' + @search.keyword2 + ']'
    else
      render plain: @search.errors.full_messages[0]
    end
  end

  def fuga
  end

  def fuga_res
  end

  def piyo
  end

  def piyo_res
  end
end
