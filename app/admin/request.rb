ActiveAdmin.register Request, as: 'BookRequest' do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :status

index do
  column :request_date
  column :status
  actions
end

form do |f|
  f.semantic_errors # shows errors on :base
  f.inputs do
    f.input :status
  end
  f.actions         # adds the 'Submit' and 'Cancel' buttons
end


end