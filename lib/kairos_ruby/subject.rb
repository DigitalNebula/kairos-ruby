require 'base64'
module KairosRuby
  class Subject < RestResource
    def self.enroll(image, subject_id, gallery_name)
      make_call(:post, '/enroll', {
        image: Base64.encode64(image),
        subject_id: subject_id,
        gallery_name: gallery_name,
        multiple_faces: true
      })
    end

    def self.verify(image, subject_id, gallery_name)
      make_call(:post, '/verify', {
        image: Base64.encode64(image),
        subject_id: subject_id,
        gallery_name: gallery_name
      })
    end
  end
end