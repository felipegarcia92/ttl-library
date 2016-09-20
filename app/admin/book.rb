ActiveAdmin.register Book do
  permit_params :image, :isbn, :title, :author
end
