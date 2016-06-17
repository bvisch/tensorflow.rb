# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tensorflow/core/protobuf/meta_graph.proto

require 'google/protobuf'

require 'google/protobuf/any'
require 'tensorflow/core/framework/graph'
require 'tensorflow/core/framework/op_def'
require 'tensorflow/core/protobuf/saver'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "tensorflow.MetaGraphDef" do
    optional :meta_info_def, :message, 1, "tensorflow.MetaGraphDef.MetaInfoDef"
    optional :graph_def, :message, 2, "tensorflow.GraphDef"
    optional :saver_def, :message, 3, "tensorflow.SaverDef"
    map :collection_def, :string, :message, 4, "tensorflow.CollectionDef"
  end
  add_message "tensorflow.MetaGraphDef.MetaInfoDef" do
    optional :meta_graph_version, :string, 1
    optional :stripped_op_list, :message, 2, "tensorflow.OpList"
    optional :any_info, :message, 3, "google.protobuf.Any"
  end
  add_message "tensorflow.CollectionDef" do
    oneof :kind do
      optional :node_list, :message, 1, "tensorflow.CollectionDef.NodeList"
      optional :bytes_list, :message, 2, "tensorflow.CollectionDef.BytesList"
      optional :int64_list, :message, 3, "tensorflow.CollectionDef.Int64List"
      optional :float_list, :message, 4, "tensorflow.CollectionDef.FloatList"
      optional :any_list, :message, 5, "tensorflow.CollectionDef.AnyList"
    end
  end
  add_message "tensorflow.CollectionDef.NodeList" do
    repeated :value, :string, 1
  end
  add_message "tensorflow.CollectionDef.BytesList" do
    repeated :value, :bytes, 1
  end
  add_message "tensorflow.CollectionDef.Int64List" do
    repeated :value, :int64, 1
  end
  add_message "tensorflow.CollectionDef.FloatList" do
    repeated :value, :float, 1
  end
  add_message "tensorflow.CollectionDef.AnyList" do
    repeated :value, :message, 1, "google.protobuf.Any"
  end
end

module Tensorflow
  MetaGraphDef = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.MetaGraphDef").msgclass
  MetaGraphDef::MetaInfoDef = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.MetaGraphDef.MetaInfoDef").msgclass
  CollectionDef = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CollectionDef").msgclass
  CollectionDef::NodeList = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CollectionDef.NodeList").msgclass
  CollectionDef::BytesList = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CollectionDef.BytesList").msgclass
  CollectionDef::Int64List = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CollectionDef.Int64List").msgclass
  CollectionDef::FloatList = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CollectionDef.FloatList").msgclass
  CollectionDef::AnyList = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.CollectionDef.AnyList").msgclass
end
