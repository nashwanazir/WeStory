ActiveAdmin.register Sentence do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :sentence_number, :story_id, :body, :user_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    column :sentence_number
    column :body
    column :story
    column :user do |sentence|
      sentence.user.present? ? sentence.user.nick_name : 'No Author'
    end
    actions
  end
end
