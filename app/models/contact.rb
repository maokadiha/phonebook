class Contact
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :name, type: String
  field :phone, type: String

  # field :photo, type: String



  mount_uploader :avatar, AvatarUploader

  #attr_accessor :avatar
  #mount_uploader :avatar, PictureUploader

  #attr_accessible :avatar, :avatar_cache

  validates :name, presence: true,
                    length: { minimum: 5 }
  validates :phone, presence: true



  belongs_to :user
  # before_save :save_image

  # def save_image
  #   return unless avatar
  #   dir = Rails.root.join('public', 'uploads').to_s
  #   Dir.mkdir(dir) unless Dir.exist?(dir)

  #   uploaded_io = avatar
  #   file = dir << '/' << uploaded_io.original_filename
  #   File.open(file, 'wb') do |file|
  #     file.write(uploaded_io.read)
  #   end

  #   self.photo = '/uploads/' << uploaded_io.original_filename
  # end
end
