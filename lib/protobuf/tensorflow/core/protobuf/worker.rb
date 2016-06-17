# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tensorflow/core/protobuf/worker.proto

require 'google/protobuf'

require 'google/protobuf/any'
require 'tensorflow/core/framework/step_stats'
require 'tensorflow/core/framework/device_attributes'
require 'tensorflow/core/framework/graph'
require 'tensorflow/core/framework/tensor'
require 'tensorflow/core/protobuf/config'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "tensorflow.GetStatusRequest" do
  end
  add_message "tensorflow.GetStatusResponse" do
    repeated :device_attributes, :message, 1, "tensorflow.DeviceAttributes"
  end
  add_message "tensorflow.RegisterGraphRequest" do
    optional :session_handle, :string, 1
    optional :graph_def, :message, 2, "tensorflow.GraphDef"
    optional :has_control_flow, :bool, 3
    optional :graph_options, :message, 4, "tensorflow.GraphOptions"
  end
  add_message "tensorflow.RegisterGraphResponse" do
    optional :graph_handle, :string, 1
  end
  add_message "tensorflow.DeregisterGraphRequest" do
    optional :graph_handle, :string, 1
  end
  add_message "tensorflow.DeregisterGraphResponse" do
  end
  add_message "tensorflow.CleanupAllRequest" do
    repeated :container, :string, 1
  end
  add_message "tensorflow.CleanupAllResponse" do
  end
  add_message "tensorflow.NamedTensor" do
    optional :key, :string, 1
    optional :val, :message, 2, "tensorflow.TensorProto"
  end
  add_message "tensorflow.ExecutorOpts" do
    optional :record_costs, :bool, 1
    optional :record_timeline, :bool, 3
  end
  add_message "tensorflow.RunGraphRequest" do
    optional :graph_handle, :string, 1
    optional :step_id, :int64, 2
    optional :exec_opts, :message, 5, "tensorflow.ExecutorOpts"
    repeated :send, :message, 3, "tensorflow.NamedTensor"
    repeated :recv_key, :string, 4
  end
  add_message "tensorflow.RunGraphResponse" do
    repeated :recv, :message, 1, "tensorflow.NamedTensor"
    optional :step_stats, :message, 2, "tensorflow.StepStats"
  end
  add_message "tensorflow.CleanupGraphRequest" do
    optional :step_id, :int64, 1
  end
  add_message "tensorflow.CleanupGraphResponse" do
  end
  add_message "tensorflow.RecvTensorRequest" do
    optional :step_id, :int64, 1
    optional :rendezvous_key, :string, 2
    optional :dma_ok, :bool, 3
    optional :client_bus_adjacency, :enum, 4, "tensorflow.BusAdjacency"
    optional :server_bus_adjacency, :enum, 5, "tensorflow.BusAdjacency"
  end
  add_message "tensorflow.RecvTensorResponse" do
    optional :tensor, :message, 1, "tensorflow.TensorProto"
    optional :is_dead, :bool, 2
    optional :send_start_micros, :int64, 3
    optional :transport_options, :message, 4, "google.protobuf.Any"
  end
  add_message "tensorflow.LoggingRequest" do
    optional :rpc_logging, :bool, 1
    optional :clear, :bool, 2
    repeated :fetch_step_id, :int64, 3
  end
  add_message "tensorflow.LabeledStepStats" do
    optional :step_id, :int64, 1
    optional :step_stats, :message, 2, "tensorflow.StepStats"
  end
  add_message "tensorflow.LoggingResponse" do
    repeated :step, :message, 1, "tensorflow.LabeledStepStats"
  end
  add_message "tensorflow.TraceOpts" do
    optional :duration, :double, 1
    optional :use_step_profiler, :bool, 2
    optional :use_kernel_profiler, :bool, 3
    optional :use_extended_profiler, :bool, 4
    optional :use_gpu_profiler, :bool, 5
    optional :use_sample_profiler, :bool, 6
  end
  add_message "tensorflow.TracingRequest" do
    optional :options, :message, 1, "tensorflow.TraceOpts"
  end
  add_message "tensorflow.TracingResponse" do
  end
end

module Tensorflow
  GetStatusRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.GetStatusRequest").msgclass
  GetStatusResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.GetStatusResponse").msgclass
  RegisterGraphRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.RegisterGraphRequest").msgclass
  RegisterGraphResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.RegisterGraphResponse").msgclass
  DeregisterGraphRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.DeregisterGraphRequest").msgclass
  DeregisterGraphResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.DeregisterGraphResponse").msgclass
  CleanupAllRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CleanupAllRequest").msgclass
  CleanupAllResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CleanupAllResponse").msgclass
  NamedTensor = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.NamedTensor").msgclass
  ExecutorOpts = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.ExecutorOpts").msgclass
  RunGraphRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.RunGraphRequest").msgclass
  RunGraphResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.RunGraphResponse").msgclass
  CleanupGraphRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CleanupGraphRequest").msgclass
  CleanupGraphResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CleanupGraphResponse").msgclass
  RecvTensorRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.RecvTensorRequest").msgclass
  RecvTensorResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.RecvTensorResponse").msgclass
  LoggingRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.LoggingRequest").msgclass
  LabeledStepStats = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.LabeledStepStats").msgclass
  LoggingResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.LoggingResponse").msgclass
  TraceOpts = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.TraceOpts").msgclass
  TracingRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.TracingRequest").msgclass
  TracingResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.TracingResponse").msgclass
end
