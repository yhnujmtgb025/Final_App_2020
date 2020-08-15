NUS review code Final app ThanhVM
by GiauNV

https://github.com/yhnujmtgb025/Final_App_2020/tree/master/rails_app/app/assets/Front_End
→ không bỏ trực tiếp folder Front_End với 1 nùi code vào đây, phân loại và bỏ vào đúng folder:
- app/assets/stylesheets
- app/assets/images
- app/javascript/packs


https://github.com/yhnujmtgb025/Final_App_2020/blob/6b9600e79c6ffba8393b6177b0441494496ff0f1/rails_app/app/controllers/photo_controller.rb#L3
→ hàm find return single object, không nên đặt tên biến là số nhiều
bad:
@photos = Photo.find(params[:id])

good:
@photo = Photo.find(params[:id])



https://github.com/yhnujmtgb025/Final_App_2020/blob/6b9600e79c6ffba8393b6177b0441494496ff0f1/rails_app/app/controllers/users_controller.rb#L8
→ coi lại cách đặt tên biến

https://github.com/yhnujmtgb025/Final_App_2020/blob/master/rails_app/config/routes.rb
→ duplicate
get 'albums/:id/edit', to: 'albums#edit'

resources :albums


Chưa có I18n