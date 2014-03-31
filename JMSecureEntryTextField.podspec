Pod::Spec.new do |s|
  s.name             = "JMSecureEntryTextField"
  s.version          = "0.1.0"
  s.summary          = "A short description of JMSecureEntryTextField."
  s.description      = <<-DESC
                       An optional longer description of JMSecureEntryTextField

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "http://github.com/justinmakaila/JMSecureEntryTextField.git"
  s.license          = 'MIT'
  s.author           = { "justinmakaila" => "justinmakaila@gmail.com" }
  s.source           = { :git => "http://github.com/justinmakaila/JMSecureEntryTextField.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Classes'
  s.resources = 'Assets/*.png'
end
