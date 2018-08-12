class IndexController < ApplicationController
  def index
  end

  def buddix
    @pre_title = "BuddiXとは"
  end

  def terms_of_service
    @pre_title = "利用規約"
  end

  def privacypolicy
    @pre_title = "プライバシーポリシー"
  end
  
  def corp
    @pre_title = "corp"
  end

  def faq
    @pre_title = "FAQ"
  end

end
