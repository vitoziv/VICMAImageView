Pod::Spec.new do |s|
  s.name     = 'VICMAImageView'
  s.version  = '1.0'
  s.platform = :ios,'6.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'Content Mode Animatable Image View, change image view\'s content mode with your animation!'
  s.homepage = 'https://github.com/vitoziv/VICMAImageView'
  s.author   = { 
    'Vito Zhang' => 'vvitozhang@gmail.com'
  }
  s.requires_arc = true
  s.source   = { 
    :git => 'https://github.com/vitoziv/VICMAImageView.git',
    :tag => s.version.to_s
  }
  s.source_files = 'VICMAImageView/*.{h,m}'    
end