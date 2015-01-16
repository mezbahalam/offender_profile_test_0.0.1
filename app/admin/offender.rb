ActiveAdmin.register Offender do


  permit_params :name, :gender, :age, :address, :mobile_no, :occupation, :religion, :educational_background, :crimes, :father_name, :mother_name, :father_occupation, :mother_occupation, :family_income, :psychological_status, :image

  index do
    column :image do |offender|
      image_tag offender.image_url(:thumb) if offender.image?
    end
    column :name
    column :age
    column :address
    column :mobile_no
    column :occupation
    column :crimes
    column :father_name
    actions
  end
  actions :all, except: [:destroy]

  active_admin_import :validate => false


  form do |f|
    f.inputs "Offender" do
      f.input :image, :image_preview => true
      f.input  :name
      f.input  :gender
      f.input  :age
      f.input  :address
      f.input  :mobile_no
      f.input  :occupation
      f.input  :religion
      f.input  :educational_background
      f.input  :crimes
      f.input  :father_name
      f.input  :mother_name
      f.input  :father_occupation
      f.input  :mother_occupation
      f.input  :family_income
      f.input  :psychological_status
    end
    f.actions
  end

  show do
    attributes_table do

      row :image do
        image_tag(offender.image.url)
      end
      row :name
      row :gender
      row :age
      row :address
      row :mobile_no
      row :occupation
      row :religion
      row :educational_background
      row :crimes
      row :father_name
      row :mother_name
      row :father_occupation
      row :mother_occupation
      row :family_income
      row :psychological_status
    end
  end


end
