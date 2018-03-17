# Rails Sample SwitchingViews

UserAgentを基にビューを切り替える

## browser

https://github.com/fnando/browser

```
gem 'browser'
```

```
# controller

require "browser"

browser = Browser.new(request.user_agent)

browser.platform.mac?
browser.platform.windows?
```

## request.variant

### 参考

http://www.techscore.com/blog/2014/03/13/rails-4-1-0-actionpack-variants/

```
# controller

before_action do

  require "browser"
  
  browser = Browser.new(request.user_agent)
  
  request.variant = :mac if  browser.platform.mac?
  request.variant = :win if  browser.platform.windows?

end
```

```
# view

xxx.html.erb

xxx.html+mac.erb
xxx.html+win.erb
```
