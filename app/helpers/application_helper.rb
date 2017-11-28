module ApplicationHelper

  def page_title
    if @title.present?
      "#{@title}-Freshness"
    else
      "Freshness"
    end
  end
  
  def default_meta_tags 
  {
    site: 'Freshness',
    reverse: true,
    title: 'Index page',
    description: "The index page of Freshness showing two search functions",
    keywords: %w[food fresh preservation search web],
    canonical: 'https://obscure-mesa-98847.herokuapp.com',
    icon: image_url('apple.ico'),
    author: 'https://www.linkedin.com/in/saki-tanda-26b0b8141/',
    og: {
      title: 'Freshness',
      type: 'website',
      url: 'https://obscure-mesa-98847.herokuapp.com',
      image: image_url('logo10.png'),
      site_name: 'Freshness',
      description: "Freshness provides the food preservation methods for you to keep food fresh as long as you can. Let's reduce food waste for global environment by using Freshness!"
    },
    fb: {
      app_id: '110529839531578'
    }
  }
  end

end
