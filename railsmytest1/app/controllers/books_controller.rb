class BooksController < ApplicationController
  def foo
    @search = BooksText.new
  end

  def foo_res
    @search = BooksText.new(params.require(:books_text).permit(:keyword1, :keyword2))

    if @search.valid?
      render plain: '[' + @search.keyword1 + '][' + @search.keyword2 + ']'
    else
      render plain: @search.errors.full_messages[0]
    end
  end

  def bar
  end

  def bar_res
  end

  def baz
  end

  def baz_res
  end
end
