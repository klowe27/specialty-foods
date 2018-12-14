require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_length_of :body_content}
  it { should validate_numericality_of :rating }
end
