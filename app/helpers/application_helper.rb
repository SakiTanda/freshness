module ApplicationHelper

  def default_meta_tags 
  {
    site: 'Freshness',
    reverse: true,
    title: 'Freshness',
    description: "Freshness provides the food preservation methods for you to keep food fresh as long as you can. Let's reduce food waste for global environment by using Freshness!",
    keywords: 'Freshness',
    canonical: 'http://192.168.1.200:3000/',
    og: {
      title: 'Freshness',
      type: 'website',
      url: 'http://192.168.1.200:3000/',
      image: '',
      site_name: 'Freshness',
      description: "Freshness provides the food preservation methods for you to keep food fresh as long as you can. Let's reduce food waste for global environment by using Freshness!"
    },
    fb: {
      app_id: '110529839531578'
    }
  } 
  end

end
