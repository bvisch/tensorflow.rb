# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tensorflow/core/framework/summary.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "tensorflow.HistogramProto" do
    optional :min, :double, 1
    optional :max, :double, 2
    optional :num, :double, 3
    optional :sum, :double, 4
    optional :sum_squares, :double, 5
    repeated :bucket_limit, :double, 6
    repeated :bucket, :double, 7
  end
  add_message "tensorflow.Summary" do
    repeated :value, :message, 1, "tensorflow.Summary.Value"
  end
  add_message "tensorflow.Summary.Image" do
    optional :height, :int32, 1
    optional :width, :int32, 2
    optional :colorspace, :int32, 3
    optional :encoded_image_string, :bytes, 4
  end
  add_message "tensorflow.Summary.Audio" do
    optional :sample_rate, :float, 1
    optional :num_channels, :int64, 2
    optional :length_frames, :int64, 3
    optional :encoded_audio_string, :bytes, 4
    optional :content_type, :string, 5
  end
  add_message "tensorflow.Summary.Value" do
    optional :tag, :string, 1
    oneof :value do
      optional :simple_value, :float, 2
      optional :obsolete_old_style_histogram, :bytes, 3
      optional :image, :message, 4, "tensorflow.Summary.Image"
      optional :histo, :message, 5, "tensorflow.HistogramProto"
      optional :audio, :message, 6, "tensorflow.Summary.Audio"
    end
  end
end

module Tensorflow
  HistogramProto = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.HistogramProto").msgclass
  Summary = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.Summary").msgclass
  Summary::Image = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.Summary.Image").msgclass
  Summary::Audio = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.Summary.Audio").msgclass
  Summary::Value = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.Summary.Value").msgclass
end
