# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tensorflow/core/util/event.proto

require 'google/protobuf'

require 'tensorflow/core/framework/summary'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "tensorflow.Event" do
    optional :wall_time, :double, 1
    optional :step, :int64, 2
    oneof :what do
      optional :file_version, :string, 3
      optional :graph_def, :bytes, 4
      optional :summary, :message, 5, "tensorflow.Summary"
      optional :log_message, :message, 6, "tensorflow.LogMessage"
      optional :session_log, :message, 7, "tensorflow.SessionLog"
      optional :tagged_run_metadata, :message, 8, "tensorflow.TaggedRunMetadata"
    end
  end
  add_message "tensorflow.LogMessage" do
    optional :level, :enum, 1, "tensorflow.LogMessage.Level"
    optional :message, :string, 2
  end
  add_enum "tensorflow.LogMessage.Level" do
    value :UNKNOWN, 0
    value :DEBUG, 10
    value :INFO, 20
    value :WARN, 30
    value :ERROR, 40
    value :FATAL, 50
  end
  add_message "tensorflow.SessionLog" do
    optional :status, :enum, 1, "tensorflow.SessionLog.SessionStatus"
    optional :checkpoint_path, :string, 2
    optional :msg, :string, 3
  end
  add_enum "tensorflow.SessionLog.SessionStatus" do
    value :STATUS_UNSPECIFIED, 0
    value :START, 1
    value :STOP, 2
    value :CHECKPOINT, 3
  end
  add_message "tensorflow.TaggedRunMetadata" do
    optional :tag, :string, 1
    optional :run_metadata, :bytes, 2
  end
end

module Tensorflow
  Event = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.Event").msgclass
  LogMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.LogMessage").msgclass
  LogMessage::Level = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.LogMessage.Level").enummodule
  SessionLog = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.SessionLog").msgclass
  SessionLog::SessionStatus = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.SessionLog.SessionStatus").enummodule
  TaggedRunMetadata = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.TaggedRunMetadata").msgclass
end
