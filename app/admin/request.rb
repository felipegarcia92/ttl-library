ActiveAdmin.register Request, as: 'BookRequest' do
  permit_params :status

  index do
    column :request_date
    column :status
    actions
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :status
    end
    f.actions
  end
end
