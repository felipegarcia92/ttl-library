ActiveAdmin.register Book do
  permit_params :image, :isbn, :title, :author_id
end
