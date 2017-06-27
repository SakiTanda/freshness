module ApplicationHelper

  def default_meta_tags 
  {
    site: 'Freshness',
    reverse: true,
    title: 'Index page',
    description: "The index page of Freshness showing two search functions",
    keywords: %w[food fresh preservation search web],
    canonical: 'http://192.168.1.200:3000/',
    icon: image_url('apple.ico'),
    author: 'https://www.linkedin.com/in/saki-tanda-26b0b8141/',
    og: {
      title: 'Freshness',
      type: 'website',
      url: 'http://192.168.1.200:3000/',
      image: image_url('logo.png'),
      site_name: 'Freshness',
      description: "Freshness provides the food preservation methods for you to keep food fresh as long as you can. Let's reduce food waste for global environment by using Freshness!"
    },
    fb: {
      app_id: '110529839531578'
    }
  } 
  end

end
