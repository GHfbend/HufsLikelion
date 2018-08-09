class ImageUploader < CarrierWave::Uploader::Base
    
    # 자료 저장방식 (AWS 연동은 'fog' 방식으로)
    storage :fog
 
    # AWS S3 Bucket 저장 경로
    # 이미지가 동일한 경로에 저장되면 똑같은 이름의 이미지가 업로드 할 시 덮어씌어질 수 있어서 이미지가 새로 추가될 때 서로 다른 경로에 이미지가 생성되게 함.
    def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
 
    # 이미지 업로드 시 허용 확장자
    def extension_white_list
    %w(jpg jpeg gif png)
    end
 
end