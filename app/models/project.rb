class Project < ActiveRecord::Base

  has_many :attachments, as: :attachable, :dependent => :destroy
  accepts_nested_attributes_for :attachments, allow_destroy: true

  attr_accessible :floors, :intro, :name, :price, :square, :deadline, :is_visible, :is_finished, :attachments_attributes

  validates_presence_of :floors, :intro, :name, :price, :square, :deadline
  validates_numericality_of :floors, :price, :square
  validates_length_of :name, :deadline, maximum: 60

  def self.all
    Project.where(is_visible: true, is_finished: false)
  end

  def self.finished
    Project.where(is_visible: true, is_finished: true)
  end

  def self.random
    Project.all.sample
  end

  def self.mapped
    Project.all.map { |project| [project.name, project.id] }
  end

  def background
    o = attachments.where(is_main_image: false, is_blueprint: false)
    o.sample.attachment.url :big
  end

  def main_image
    o = attachments.find_by_is_main_image true
    o.attachment.url :main_image
  end


  def set_styles
    {main_image: '220x127#', thumb: '150x90#', big: '1366x768#'}
  end


end