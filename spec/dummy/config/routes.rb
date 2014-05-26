Rails.application.routes.draw do
  mount NoCms::News::Engine => "/"
end
