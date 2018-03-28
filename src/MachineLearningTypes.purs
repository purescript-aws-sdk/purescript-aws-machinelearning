
module AWS.MachineLearning.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AddTagsInput = AddTagsInput 
  { "Tags" :: (TagList)
  , "ResourceId" :: (EntityId)
  , "ResourceType" :: (TaggableResourceType)
  }
derive instance newtypeAddTagsInput :: Newtype AddTagsInput _
derive instance repGenericAddTagsInput :: Generic AddTagsInput _
instance showAddTagsInput :: Show AddTagsInput where show = genericShow
instance decodeAddTagsInput :: Decode AddTagsInput where decode = genericDecode options
instance encodeAddTagsInput :: Encode AddTagsInput where encode = genericEncode options

-- | Constructs AddTagsInput from required parameters
newAddTagsInput :: EntityId -> TaggableResourceType -> TagList -> AddTagsInput
newAddTagsInput _ResourceId _ResourceType _Tags = AddTagsInput { "ResourceId": _ResourceId, "ResourceType": _ResourceType, "Tags": _Tags }

-- | Constructs AddTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsInput' :: EntityId -> TaggableResourceType -> TagList -> ( { "Tags" :: (TagList) , "ResourceId" :: (EntityId) , "ResourceType" :: (TaggableResourceType) } -> {"Tags" :: (TagList) , "ResourceId" :: (EntityId) , "ResourceType" :: (TaggableResourceType) } ) -> AddTagsInput
newAddTagsInput' _ResourceId _ResourceType _Tags customize = (AddTagsInput <<< customize) { "ResourceId": _ResourceId, "ResourceType": _ResourceType, "Tags": _Tags }



-- | <p>Amazon ML returns the following elements. </p>
newtype AddTagsOutput = AddTagsOutput 
  { "ResourceId" :: NullOrUndefined (EntityId)
  , "ResourceType" :: NullOrUndefined (TaggableResourceType)
  }
derive instance newtypeAddTagsOutput :: Newtype AddTagsOutput _
derive instance repGenericAddTagsOutput :: Generic AddTagsOutput _
instance showAddTagsOutput :: Show AddTagsOutput where show = genericShow
instance decodeAddTagsOutput :: Decode AddTagsOutput where decode = genericDecode options
instance encodeAddTagsOutput :: Encode AddTagsOutput where encode = genericEncode options

-- | Constructs AddTagsOutput from required parameters
newAddTagsOutput :: AddTagsOutput
newAddTagsOutput  = AddTagsOutput { "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }

-- | Constructs AddTagsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsOutput' :: ( { "ResourceId" :: NullOrUndefined (EntityId) , "ResourceType" :: NullOrUndefined (TaggableResourceType) } -> {"ResourceId" :: NullOrUndefined (EntityId) , "ResourceType" :: NullOrUndefined (TaggableResourceType) } ) -> AddTagsOutput
newAddTagsOutput'  customize = (AddTagsOutput <<< customize) { "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }



-- | <p>The function used to train an <code>MLModel</code>. Training choices supported by Amazon ML include the following:</p> <ul> <li> <code>SGD</code> - Stochastic Gradient Descent.</li> <li> <code>RandomForest</code> - Random forest of decision trees.</li> </ul>
newtype Algorithm = Algorithm String
derive instance newtypeAlgorithm :: Newtype Algorithm _
derive instance repGenericAlgorithm :: Generic Algorithm _
instance showAlgorithm :: Show Algorithm where show = genericShow
instance decodeAlgorithm :: Decode Algorithm where decode = genericDecode options
instance encodeAlgorithm :: Encode Algorithm where encode = genericEncode options



-- | <p>An Amazon Web Service (AWS) user account identifier. The account identifier can be an AWS root account or an AWS Identity and Access Management (IAM) user.</p>
newtype AwsUserArn = AwsUserArn String
derive instance newtypeAwsUserArn :: Newtype AwsUserArn _
derive instance repGenericAwsUserArn :: Generic AwsUserArn _
instance showAwsUserArn :: Show AwsUserArn where show = genericShow
instance decodeAwsUserArn :: Decode AwsUserArn where decode = genericDecode options
instance encodeAwsUserArn :: Encode AwsUserArn where encode = genericEncode options



-- | <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
newtype BatchPrediction = BatchPrediction 
  { "BatchPredictionId" :: NullOrUndefined (EntityId)
  , "MLModelId" :: NullOrUndefined (EntityId)
  , "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId)
  , "InputDataLocationS3" :: NullOrUndefined (S3Url)
  , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "LastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "Name" :: NullOrUndefined (EntityName)
  , "Status" :: NullOrUndefined (EntityStatus)
  , "OutputUri" :: NullOrUndefined (S3Url)
  , "Message" :: NullOrUndefined (Message)
  , "ComputeTime" :: NullOrUndefined (LongType)
  , "FinishedAt" :: NullOrUndefined (EpochTime)
  , "StartedAt" :: NullOrUndefined (EpochTime)
  , "TotalRecordCount" :: NullOrUndefined (LongType)
  , "InvalidRecordCount" :: NullOrUndefined (LongType)
  }
derive instance newtypeBatchPrediction :: Newtype BatchPrediction _
derive instance repGenericBatchPrediction :: Generic BatchPrediction _
instance showBatchPrediction :: Show BatchPrediction where show = genericShow
instance decodeBatchPrediction :: Decode BatchPrediction where decode = genericDecode options
instance encodeBatchPrediction :: Encode BatchPrediction where encode = genericEncode options

-- | Constructs BatchPrediction from required parameters
newBatchPrediction :: BatchPrediction
newBatchPrediction  = BatchPrediction { "BatchPredictionDataSourceId": (NullOrUndefined Nothing), "BatchPredictionId": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "InvalidRecordCount": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "OutputUri": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TotalRecordCount": (NullOrUndefined Nothing) }

-- | Constructs BatchPrediction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchPrediction' :: ( { "BatchPredictionId" :: NullOrUndefined (EntityId) , "MLModelId" :: NullOrUndefined (EntityId) , "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "OutputUri" :: NullOrUndefined (S3Url) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) , "TotalRecordCount" :: NullOrUndefined (LongType) , "InvalidRecordCount" :: NullOrUndefined (LongType) } -> {"BatchPredictionId" :: NullOrUndefined (EntityId) , "MLModelId" :: NullOrUndefined (EntityId) , "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "OutputUri" :: NullOrUndefined (S3Url) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) , "TotalRecordCount" :: NullOrUndefined (LongType) , "InvalidRecordCount" :: NullOrUndefined (LongType) } ) -> BatchPrediction
newBatchPrediction'  customize = (BatchPrediction <<< customize) { "BatchPredictionDataSourceId": (NullOrUndefined Nothing), "BatchPredictionId": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "InvalidRecordCount": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "OutputUri": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TotalRecordCount": (NullOrUndefined Nothing) }



-- | <p>A list of the variables to use in searching or filtering <code>BatchPrediction</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>BatchPrediction</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>BatchPrediction</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>BatchPrediction</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
newtype BatchPredictionFilterVariable = BatchPredictionFilterVariable String
derive instance newtypeBatchPredictionFilterVariable :: Newtype BatchPredictionFilterVariable _
derive instance repGenericBatchPredictionFilterVariable :: Generic BatchPredictionFilterVariable _
instance showBatchPredictionFilterVariable :: Show BatchPredictionFilterVariable where show = genericShow
instance decodeBatchPredictionFilterVariable :: Decode BatchPredictionFilterVariable where decode = genericDecode options
instance encodeBatchPredictionFilterVariable :: Encode BatchPredictionFilterVariable where encode = genericEncode options



newtype BatchPredictions = BatchPredictions (Array BatchPrediction)
derive instance newtypeBatchPredictions :: Newtype BatchPredictions _
derive instance repGenericBatchPredictions :: Generic BatchPredictions _
instance showBatchPredictions :: Show BatchPredictions where show = genericShow
instance decodeBatchPredictions :: Decode BatchPredictions where decode = genericDecode options
instance encodeBatchPredictions :: Encode BatchPredictions where encode = genericEncode options



-- | <p>The value specified in a filtering condition. The <code>ComparatorValue</code> becomes the reference value when matching or evaluating data values in filtering and searching functions.</p>
newtype ComparatorValue = ComparatorValue String
derive instance newtypeComparatorValue :: Newtype ComparatorValue _
derive instance repGenericComparatorValue :: Generic ComparatorValue _
instance showComparatorValue :: Show ComparatorValue where show = genericShow
instance decodeComparatorValue :: Decode ComparatorValue where decode = genericDecode options
instance encodeComparatorValue :: Encode ComparatorValue where encode = genericEncode options



newtype ComputeStatistics = ComputeStatistics Boolean
derive instance newtypeComputeStatistics :: Newtype ComputeStatistics _
derive instance repGenericComputeStatistics :: Generic ComputeStatistics _
instance showComputeStatistics :: Show ComputeStatistics where show = genericShow
instance decodeComputeStatistics :: Decode ComputeStatistics where decode = genericDecode options
instance encodeComputeStatistics :: Encode ComputeStatistics where encode = genericEncode options



newtype CreateBatchPredictionInput = CreateBatchPredictionInput 
  { "BatchPredictionId" :: (EntityId)
  , "BatchPredictionName" :: NullOrUndefined (EntityName)
  , "MLModelId" :: (EntityId)
  , "BatchPredictionDataSourceId" :: (EntityId)
  , "OutputUri" :: (S3Url)
  }
derive instance newtypeCreateBatchPredictionInput :: Newtype CreateBatchPredictionInput _
derive instance repGenericCreateBatchPredictionInput :: Generic CreateBatchPredictionInput _
instance showCreateBatchPredictionInput :: Show CreateBatchPredictionInput where show = genericShow
instance decodeCreateBatchPredictionInput :: Decode CreateBatchPredictionInput where decode = genericDecode options
instance encodeCreateBatchPredictionInput :: Encode CreateBatchPredictionInput where encode = genericEncode options

-- | Constructs CreateBatchPredictionInput from required parameters
newCreateBatchPredictionInput :: EntityId -> EntityId -> EntityId -> S3Url -> CreateBatchPredictionInput
newCreateBatchPredictionInput _BatchPredictionDataSourceId _BatchPredictionId _MLModelId _OutputUri = CreateBatchPredictionInput { "BatchPredictionDataSourceId": _BatchPredictionDataSourceId, "BatchPredictionId": _BatchPredictionId, "MLModelId": _MLModelId, "OutputUri": _OutputUri, "BatchPredictionName": (NullOrUndefined Nothing) }

-- | Constructs CreateBatchPredictionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBatchPredictionInput' :: EntityId -> EntityId -> EntityId -> S3Url -> ( { "BatchPredictionId" :: (EntityId) , "BatchPredictionName" :: NullOrUndefined (EntityName) , "MLModelId" :: (EntityId) , "BatchPredictionDataSourceId" :: (EntityId) , "OutputUri" :: (S3Url) } -> {"BatchPredictionId" :: (EntityId) , "BatchPredictionName" :: NullOrUndefined (EntityName) , "MLModelId" :: (EntityId) , "BatchPredictionDataSourceId" :: (EntityId) , "OutputUri" :: (S3Url) } ) -> CreateBatchPredictionInput
newCreateBatchPredictionInput' _BatchPredictionDataSourceId _BatchPredictionId _MLModelId _OutputUri customize = (CreateBatchPredictionInput <<< customize) { "BatchPredictionDataSourceId": _BatchPredictionDataSourceId, "BatchPredictionId": _BatchPredictionId, "MLModelId": _MLModelId, "OutputUri": _OutputUri, "BatchPredictionName": (NullOrUndefined Nothing) }



-- | <p> Represents the output of a <code>CreateBatchPrediction</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateBatchPrediction</code> operation is asynchronous. You can poll for status updates by using the <code>&gt;GetBatchPrediction</code> operation and checking the <code>Status</code> parameter of the result. </p>
newtype CreateBatchPredictionOutput = CreateBatchPredictionOutput 
  { "BatchPredictionId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeCreateBatchPredictionOutput :: Newtype CreateBatchPredictionOutput _
derive instance repGenericCreateBatchPredictionOutput :: Generic CreateBatchPredictionOutput _
instance showCreateBatchPredictionOutput :: Show CreateBatchPredictionOutput where show = genericShow
instance decodeCreateBatchPredictionOutput :: Decode CreateBatchPredictionOutput where decode = genericDecode options
instance encodeCreateBatchPredictionOutput :: Encode CreateBatchPredictionOutput where encode = genericEncode options

-- | Constructs CreateBatchPredictionOutput from required parameters
newCreateBatchPredictionOutput :: CreateBatchPredictionOutput
newCreateBatchPredictionOutput  = CreateBatchPredictionOutput { "BatchPredictionId": (NullOrUndefined Nothing) }

-- | Constructs CreateBatchPredictionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBatchPredictionOutput' :: ( { "BatchPredictionId" :: NullOrUndefined (EntityId) } -> {"BatchPredictionId" :: NullOrUndefined (EntityId) } ) -> CreateBatchPredictionOutput
newCreateBatchPredictionOutput'  customize = (CreateBatchPredictionOutput <<< customize) { "BatchPredictionId": (NullOrUndefined Nothing) }



newtype CreateDataSourceFromRDSInput = CreateDataSourceFromRDSInput 
  { "DataSourceId" :: (EntityId)
  , "DataSourceName" :: NullOrUndefined (EntityName)
  , "RDSData" :: (RDSDataSpec)
  , "RoleARN" :: (RoleARN)
  , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics)
  }
derive instance newtypeCreateDataSourceFromRDSInput :: Newtype CreateDataSourceFromRDSInput _
derive instance repGenericCreateDataSourceFromRDSInput :: Generic CreateDataSourceFromRDSInput _
instance showCreateDataSourceFromRDSInput :: Show CreateDataSourceFromRDSInput where show = genericShow
instance decodeCreateDataSourceFromRDSInput :: Decode CreateDataSourceFromRDSInput where decode = genericDecode options
instance encodeCreateDataSourceFromRDSInput :: Encode CreateDataSourceFromRDSInput where encode = genericEncode options

-- | Constructs CreateDataSourceFromRDSInput from required parameters
newCreateDataSourceFromRDSInput :: EntityId -> RDSDataSpec -> RoleARN -> CreateDataSourceFromRDSInput
newCreateDataSourceFromRDSInput _DataSourceId _RDSData _RoleARN = CreateDataSourceFromRDSInput { "DataSourceId": _DataSourceId, "RDSData": _RDSData, "RoleARN": _RoleARN, "ComputeStatistics": (NullOrUndefined Nothing), "DataSourceName": (NullOrUndefined Nothing) }

-- | Constructs CreateDataSourceFromRDSInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDataSourceFromRDSInput' :: EntityId -> RDSDataSpec -> RoleARN -> ( { "DataSourceId" :: (EntityId) , "DataSourceName" :: NullOrUndefined (EntityName) , "RDSData" :: (RDSDataSpec) , "RoleARN" :: (RoleARN) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } -> {"DataSourceId" :: (EntityId) , "DataSourceName" :: NullOrUndefined (EntityName) , "RDSData" :: (RDSDataSpec) , "RoleARN" :: (RoleARN) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } ) -> CreateDataSourceFromRDSInput
newCreateDataSourceFromRDSInput' _DataSourceId _RDSData _RoleARN customize = (CreateDataSourceFromRDSInput <<< customize) { "DataSourceId": _DataSourceId, "RDSData": _RDSData, "RoleARN": _RoleARN, "ComputeStatistics": (NullOrUndefined Nothing), "DataSourceName": (NullOrUndefined Nothing) }



-- | <p> Represents the output of a <code>CreateDataSourceFromRDS</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromRDS</code>&gt; operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. You can inspect the <code>Message</code> when <code>Status</code> shows up as <code>FAILED</code>. You can also check the progress of the copy operation by going to the <code>DataPipeline</code> console and looking up the pipeline using the <code>pipelineId </code> from the describe call.</p>
newtype CreateDataSourceFromRDSOutput = CreateDataSourceFromRDSOutput 
  { "DataSourceId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeCreateDataSourceFromRDSOutput :: Newtype CreateDataSourceFromRDSOutput _
derive instance repGenericCreateDataSourceFromRDSOutput :: Generic CreateDataSourceFromRDSOutput _
instance showCreateDataSourceFromRDSOutput :: Show CreateDataSourceFromRDSOutput where show = genericShow
instance decodeCreateDataSourceFromRDSOutput :: Decode CreateDataSourceFromRDSOutput where decode = genericDecode options
instance encodeCreateDataSourceFromRDSOutput :: Encode CreateDataSourceFromRDSOutput where encode = genericEncode options

-- | Constructs CreateDataSourceFromRDSOutput from required parameters
newCreateDataSourceFromRDSOutput :: CreateDataSourceFromRDSOutput
newCreateDataSourceFromRDSOutput  = CreateDataSourceFromRDSOutput { "DataSourceId": (NullOrUndefined Nothing) }

-- | Constructs CreateDataSourceFromRDSOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDataSourceFromRDSOutput' :: ( { "DataSourceId" :: NullOrUndefined (EntityId) } -> {"DataSourceId" :: NullOrUndefined (EntityId) } ) -> CreateDataSourceFromRDSOutput
newCreateDataSourceFromRDSOutput'  customize = (CreateDataSourceFromRDSOutput <<< customize) { "DataSourceId": (NullOrUndefined Nothing) }



newtype CreateDataSourceFromRedshiftInput = CreateDataSourceFromRedshiftInput 
  { "DataSourceId" :: (EntityId)
  , "DataSourceName" :: NullOrUndefined (EntityName)
  , "DataSpec" :: (RedshiftDataSpec)
  , "RoleARN" :: (RoleARN)
  , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics)
  }
derive instance newtypeCreateDataSourceFromRedshiftInput :: Newtype CreateDataSourceFromRedshiftInput _
derive instance repGenericCreateDataSourceFromRedshiftInput :: Generic CreateDataSourceFromRedshiftInput _
instance showCreateDataSourceFromRedshiftInput :: Show CreateDataSourceFromRedshiftInput where show = genericShow
instance decodeCreateDataSourceFromRedshiftInput :: Decode CreateDataSourceFromRedshiftInput where decode = genericDecode options
instance encodeCreateDataSourceFromRedshiftInput :: Encode CreateDataSourceFromRedshiftInput where encode = genericEncode options

-- | Constructs CreateDataSourceFromRedshiftInput from required parameters
newCreateDataSourceFromRedshiftInput :: EntityId -> RedshiftDataSpec -> RoleARN -> CreateDataSourceFromRedshiftInput
newCreateDataSourceFromRedshiftInput _DataSourceId _DataSpec _RoleARN = CreateDataSourceFromRedshiftInput { "DataSourceId": _DataSourceId, "DataSpec": _DataSpec, "RoleARN": _RoleARN, "ComputeStatistics": (NullOrUndefined Nothing), "DataSourceName": (NullOrUndefined Nothing) }

-- | Constructs CreateDataSourceFromRedshiftInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDataSourceFromRedshiftInput' :: EntityId -> RedshiftDataSpec -> RoleARN -> ( { "DataSourceId" :: (EntityId) , "DataSourceName" :: NullOrUndefined (EntityName) , "DataSpec" :: (RedshiftDataSpec) , "RoleARN" :: (RoleARN) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } -> {"DataSourceId" :: (EntityId) , "DataSourceName" :: NullOrUndefined (EntityName) , "DataSpec" :: (RedshiftDataSpec) , "RoleARN" :: (RoleARN) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } ) -> CreateDataSourceFromRedshiftInput
newCreateDataSourceFromRedshiftInput' _DataSourceId _DataSpec _RoleARN customize = (CreateDataSourceFromRedshiftInput <<< customize) { "DataSourceId": _DataSourceId, "DataSpec": _DataSpec, "RoleARN": _RoleARN, "ComputeStatistics": (NullOrUndefined Nothing), "DataSourceName": (NullOrUndefined Nothing) }



-- | <p> Represents the output of a <code>CreateDataSourceFromRedshift</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromRedshift</code> operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>
newtype CreateDataSourceFromRedshiftOutput = CreateDataSourceFromRedshiftOutput 
  { "DataSourceId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeCreateDataSourceFromRedshiftOutput :: Newtype CreateDataSourceFromRedshiftOutput _
derive instance repGenericCreateDataSourceFromRedshiftOutput :: Generic CreateDataSourceFromRedshiftOutput _
instance showCreateDataSourceFromRedshiftOutput :: Show CreateDataSourceFromRedshiftOutput where show = genericShow
instance decodeCreateDataSourceFromRedshiftOutput :: Decode CreateDataSourceFromRedshiftOutput where decode = genericDecode options
instance encodeCreateDataSourceFromRedshiftOutput :: Encode CreateDataSourceFromRedshiftOutput where encode = genericEncode options

-- | Constructs CreateDataSourceFromRedshiftOutput from required parameters
newCreateDataSourceFromRedshiftOutput :: CreateDataSourceFromRedshiftOutput
newCreateDataSourceFromRedshiftOutput  = CreateDataSourceFromRedshiftOutput { "DataSourceId": (NullOrUndefined Nothing) }

-- | Constructs CreateDataSourceFromRedshiftOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDataSourceFromRedshiftOutput' :: ( { "DataSourceId" :: NullOrUndefined (EntityId) } -> {"DataSourceId" :: NullOrUndefined (EntityId) } ) -> CreateDataSourceFromRedshiftOutput
newCreateDataSourceFromRedshiftOutput'  customize = (CreateDataSourceFromRedshiftOutput <<< customize) { "DataSourceId": (NullOrUndefined Nothing) }



newtype CreateDataSourceFromS3Input = CreateDataSourceFromS3Input 
  { "DataSourceId" :: (EntityId)
  , "DataSourceName" :: NullOrUndefined (EntityName)
  , "DataSpec" :: (S3DataSpec)
  , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics)
  }
derive instance newtypeCreateDataSourceFromS3Input :: Newtype CreateDataSourceFromS3Input _
derive instance repGenericCreateDataSourceFromS3Input :: Generic CreateDataSourceFromS3Input _
instance showCreateDataSourceFromS3Input :: Show CreateDataSourceFromS3Input where show = genericShow
instance decodeCreateDataSourceFromS3Input :: Decode CreateDataSourceFromS3Input where decode = genericDecode options
instance encodeCreateDataSourceFromS3Input :: Encode CreateDataSourceFromS3Input where encode = genericEncode options

-- | Constructs CreateDataSourceFromS3Input from required parameters
newCreateDataSourceFromS3Input :: EntityId -> S3DataSpec -> CreateDataSourceFromS3Input
newCreateDataSourceFromS3Input _DataSourceId _DataSpec = CreateDataSourceFromS3Input { "DataSourceId": _DataSourceId, "DataSpec": _DataSpec, "ComputeStatistics": (NullOrUndefined Nothing), "DataSourceName": (NullOrUndefined Nothing) }

-- | Constructs CreateDataSourceFromS3Input's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDataSourceFromS3Input' :: EntityId -> S3DataSpec -> ( { "DataSourceId" :: (EntityId) , "DataSourceName" :: NullOrUndefined (EntityName) , "DataSpec" :: (S3DataSpec) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } -> {"DataSourceId" :: (EntityId) , "DataSourceName" :: NullOrUndefined (EntityName) , "DataSpec" :: (S3DataSpec) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } ) -> CreateDataSourceFromS3Input
newCreateDataSourceFromS3Input' _DataSourceId _DataSpec customize = (CreateDataSourceFromS3Input <<< customize) { "DataSourceId": _DataSourceId, "DataSpec": _DataSpec, "ComputeStatistics": (NullOrUndefined Nothing), "DataSourceName": (NullOrUndefined Nothing) }



-- | <p> Represents the output of a <code>CreateDataSourceFromS3</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromS3</code> operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>
newtype CreateDataSourceFromS3Output = CreateDataSourceFromS3Output 
  { "DataSourceId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeCreateDataSourceFromS3Output :: Newtype CreateDataSourceFromS3Output _
derive instance repGenericCreateDataSourceFromS3Output :: Generic CreateDataSourceFromS3Output _
instance showCreateDataSourceFromS3Output :: Show CreateDataSourceFromS3Output where show = genericShow
instance decodeCreateDataSourceFromS3Output :: Decode CreateDataSourceFromS3Output where decode = genericDecode options
instance encodeCreateDataSourceFromS3Output :: Encode CreateDataSourceFromS3Output where encode = genericEncode options

-- | Constructs CreateDataSourceFromS3Output from required parameters
newCreateDataSourceFromS3Output :: CreateDataSourceFromS3Output
newCreateDataSourceFromS3Output  = CreateDataSourceFromS3Output { "DataSourceId": (NullOrUndefined Nothing) }

-- | Constructs CreateDataSourceFromS3Output's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDataSourceFromS3Output' :: ( { "DataSourceId" :: NullOrUndefined (EntityId) } -> {"DataSourceId" :: NullOrUndefined (EntityId) } ) -> CreateDataSourceFromS3Output
newCreateDataSourceFromS3Output'  customize = (CreateDataSourceFromS3Output <<< customize) { "DataSourceId": (NullOrUndefined Nothing) }



newtype CreateEvaluationInput = CreateEvaluationInput 
  { "EvaluationId" :: (EntityId)
  , "EvaluationName" :: NullOrUndefined (EntityName)
  , "MLModelId" :: (EntityId)
  , "EvaluationDataSourceId" :: (EntityId)
  }
derive instance newtypeCreateEvaluationInput :: Newtype CreateEvaluationInput _
derive instance repGenericCreateEvaluationInput :: Generic CreateEvaluationInput _
instance showCreateEvaluationInput :: Show CreateEvaluationInput where show = genericShow
instance decodeCreateEvaluationInput :: Decode CreateEvaluationInput where decode = genericDecode options
instance encodeCreateEvaluationInput :: Encode CreateEvaluationInput where encode = genericEncode options

-- | Constructs CreateEvaluationInput from required parameters
newCreateEvaluationInput :: EntityId -> EntityId -> EntityId -> CreateEvaluationInput
newCreateEvaluationInput _EvaluationDataSourceId _EvaluationId _MLModelId = CreateEvaluationInput { "EvaluationDataSourceId": _EvaluationDataSourceId, "EvaluationId": _EvaluationId, "MLModelId": _MLModelId, "EvaluationName": (NullOrUndefined Nothing) }

-- | Constructs CreateEvaluationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEvaluationInput' :: EntityId -> EntityId -> EntityId -> ( { "EvaluationId" :: (EntityId) , "EvaluationName" :: NullOrUndefined (EntityName) , "MLModelId" :: (EntityId) , "EvaluationDataSourceId" :: (EntityId) } -> {"EvaluationId" :: (EntityId) , "EvaluationName" :: NullOrUndefined (EntityName) , "MLModelId" :: (EntityId) , "EvaluationDataSourceId" :: (EntityId) } ) -> CreateEvaluationInput
newCreateEvaluationInput' _EvaluationDataSourceId _EvaluationId _MLModelId customize = (CreateEvaluationInput <<< customize) { "EvaluationDataSourceId": _EvaluationDataSourceId, "EvaluationId": _EvaluationId, "MLModelId": _MLModelId, "EvaluationName": (NullOrUndefined Nothing) }



-- | <p> Represents the output of a <code>CreateEvaluation</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p><code>CreateEvaluation</code> operation is asynchronous. You can poll for status updates by using the <code>GetEvcaluation</code> operation and checking the <code>Status</code> parameter. </p>
newtype CreateEvaluationOutput = CreateEvaluationOutput 
  { "EvaluationId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeCreateEvaluationOutput :: Newtype CreateEvaluationOutput _
derive instance repGenericCreateEvaluationOutput :: Generic CreateEvaluationOutput _
instance showCreateEvaluationOutput :: Show CreateEvaluationOutput where show = genericShow
instance decodeCreateEvaluationOutput :: Decode CreateEvaluationOutput where decode = genericDecode options
instance encodeCreateEvaluationOutput :: Encode CreateEvaluationOutput where encode = genericEncode options

-- | Constructs CreateEvaluationOutput from required parameters
newCreateEvaluationOutput :: CreateEvaluationOutput
newCreateEvaluationOutput  = CreateEvaluationOutput { "EvaluationId": (NullOrUndefined Nothing) }

-- | Constructs CreateEvaluationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEvaluationOutput' :: ( { "EvaluationId" :: NullOrUndefined (EntityId) } -> {"EvaluationId" :: NullOrUndefined (EntityId) } ) -> CreateEvaluationOutput
newCreateEvaluationOutput'  customize = (CreateEvaluationOutput <<< customize) { "EvaluationId": (NullOrUndefined Nothing) }



newtype CreateMLModelInput = CreateMLModelInput 
  { "MLModelId" :: (EntityId)
  , "MLModelName" :: NullOrUndefined (EntityName)
  , "MLModelType" :: (MLModelType)
  , "Parameters" :: NullOrUndefined (TrainingParameters)
  , "TrainingDataSourceId" :: (EntityId)
  , "Recipe" :: NullOrUndefined (Recipe)
  , "RecipeUri" :: NullOrUndefined (S3Url)
  }
derive instance newtypeCreateMLModelInput :: Newtype CreateMLModelInput _
derive instance repGenericCreateMLModelInput :: Generic CreateMLModelInput _
instance showCreateMLModelInput :: Show CreateMLModelInput where show = genericShow
instance decodeCreateMLModelInput :: Decode CreateMLModelInput where decode = genericDecode options
instance encodeCreateMLModelInput :: Encode CreateMLModelInput where encode = genericEncode options

-- | Constructs CreateMLModelInput from required parameters
newCreateMLModelInput :: EntityId -> MLModelType -> EntityId -> CreateMLModelInput
newCreateMLModelInput _MLModelId _MLModelType _TrainingDataSourceId = CreateMLModelInput { "MLModelId": _MLModelId, "MLModelType": _MLModelType, "TrainingDataSourceId": _TrainingDataSourceId, "MLModelName": (NullOrUndefined Nothing), "Parameters": (NullOrUndefined Nothing), "Recipe": (NullOrUndefined Nothing), "RecipeUri": (NullOrUndefined Nothing) }

-- | Constructs CreateMLModelInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMLModelInput' :: EntityId -> MLModelType -> EntityId -> ( { "MLModelId" :: (EntityId) , "MLModelName" :: NullOrUndefined (EntityName) , "MLModelType" :: (MLModelType) , "Parameters" :: NullOrUndefined (TrainingParameters) , "TrainingDataSourceId" :: (EntityId) , "Recipe" :: NullOrUndefined (Recipe) , "RecipeUri" :: NullOrUndefined (S3Url) } -> {"MLModelId" :: (EntityId) , "MLModelName" :: NullOrUndefined (EntityName) , "MLModelType" :: (MLModelType) , "Parameters" :: NullOrUndefined (TrainingParameters) , "TrainingDataSourceId" :: (EntityId) , "Recipe" :: NullOrUndefined (Recipe) , "RecipeUri" :: NullOrUndefined (S3Url) } ) -> CreateMLModelInput
newCreateMLModelInput' _MLModelId _MLModelType _TrainingDataSourceId customize = (CreateMLModelInput <<< customize) { "MLModelId": _MLModelId, "MLModelType": _MLModelType, "TrainingDataSourceId": _TrainingDataSourceId, "MLModelName": (NullOrUndefined Nothing), "Parameters": (NullOrUndefined Nothing), "Recipe": (NullOrUndefined Nothing), "RecipeUri": (NullOrUndefined Nothing) }



-- | <p> Represents the output of a <code>CreateMLModel</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateMLModel</code> operation is asynchronous. You can poll for status updates by using the <code>GetMLModel</code> operation and checking the <code>Status</code> parameter. </p>
newtype CreateMLModelOutput = CreateMLModelOutput 
  { "MLModelId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeCreateMLModelOutput :: Newtype CreateMLModelOutput _
derive instance repGenericCreateMLModelOutput :: Generic CreateMLModelOutput _
instance showCreateMLModelOutput :: Show CreateMLModelOutput where show = genericShow
instance decodeCreateMLModelOutput :: Decode CreateMLModelOutput where decode = genericDecode options
instance encodeCreateMLModelOutput :: Encode CreateMLModelOutput where encode = genericEncode options

-- | Constructs CreateMLModelOutput from required parameters
newCreateMLModelOutput :: CreateMLModelOutput
newCreateMLModelOutput  = CreateMLModelOutput { "MLModelId": (NullOrUndefined Nothing) }

-- | Constructs CreateMLModelOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMLModelOutput' :: ( { "MLModelId" :: NullOrUndefined (EntityId) } -> {"MLModelId" :: NullOrUndefined (EntityId) } ) -> CreateMLModelOutput
newCreateMLModelOutput'  customize = (CreateMLModelOutput <<< customize) { "MLModelId": (NullOrUndefined Nothing) }



newtype CreateRealtimeEndpointInput = CreateRealtimeEndpointInput 
  { "MLModelId" :: (EntityId)
  }
derive instance newtypeCreateRealtimeEndpointInput :: Newtype CreateRealtimeEndpointInput _
derive instance repGenericCreateRealtimeEndpointInput :: Generic CreateRealtimeEndpointInput _
instance showCreateRealtimeEndpointInput :: Show CreateRealtimeEndpointInput where show = genericShow
instance decodeCreateRealtimeEndpointInput :: Decode CreateRealtimeEndpointInput where decode = genericDecode options
instance encodeCreateRealtimeEndpointInput :: Encode CreateRealtimeEndpointInput where encode = genericEncode options

-- | Constructs CreateRealtimeEndpointInput from required parameters
newCreateRealtimeEndpointInput :: EntityId -> CreateRealtimeEndpointInput
newCreateRealtimeEndpointInput _MLModelId = CreateRealtimeEndpointInput { "MLModelId": _MLModelId }

-- | Constructs CreateRealtimeEndpointInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRealtimeEndpointInput' :: EntityId -> ( { "MLModelId" :: (EntityId) } -> {"MLModelId" :: (EntityId) } ) -> CreateRealtimeEndpointInput
newCreateRealtimeEndpointInput' _MLModelId customize = (CreateRealtimeEndpointInput <<< customize) { "MLModelId": _MLModelId }



-- | <p>Represents the output of an <code>CreateRealtimeEndpoint</code> operation.</p> <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>.</p> <note> <p>The endpoint information includes the URI of the <code>MLModel</code>; that is, the location to send online prediction requests for the specified <code>MLModel</code>.</p> </note>
newtype CreateRealtimeEndpointOutput = CreateRealtimeEndpointOutput 
  { "MLModelId" :: NullOrUndefined (EntityId)
  , "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo)
  }
derive instance newtypeCreateRealtimeEndpointOutput :: Newtype CreateRealtimeEndpointOutput _
derive instance repGenericCreateRealtimeEndpointOutput :: Generic CreateRealtimeEndpointOutput _
instance showCreateRealtimeEndpointOutput :: Show CreateRealtimeEndpointOutput where show = genericShow
instance decodeCreateRealtimeEndpointOutput :: Decode CreateRealtimeEndpointOutput where decode = genericDecode options
instance encodeCreateRealtimeEndpointOutput :: Encode CreateRealtimeEndpointOutput where encode = genericEncode options

-- | Constructs CreateRealtimeEndpointOutput from required parameters
newCreateRealtimeEndpointOutput :: CreateRealtimeEndpointOutput
newCreateRealtimeEndpointOutput  = CreateRealtimeEndpointOutput { "MLModelId": (NullOrUndefined Nothing), "RealtimeEndpointInfo": (NullOrUndefined Nothing) }

-- | Constructs CreateRealtimeEndpointOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRealtimeEndpointOutput' :: ( { "MLModelId" :: NullOrUndefined (EntityId) , "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) } -> {"MLModelId" :: NullOrUndefined (EntityId) , "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) } ) -> CreateRealtimeEndpointOutput
newCreateRealtimeEndpointOutput'  customize = (CreateRealtimeEndpointOutput <<< customize) { "MLModelId": (NullOrUndefined Nothing), "RealtimeEndpointInfo": (NullOrUndefined Nothing) }



newtype DataRearrangement = DataRearrangement String
derive instance newtypeDataRearrangement :: Newtype DataRearrangement _
derive instance repGenericDataRearrangement :: Generic DataRearrangement _
instance showDataRearrangement :: Show DataRearrangement where show = genericShow
instance decodeDataRearrangement :: Decode DataRearrangement where decode = genericDecode options
instance encodeDataRearrangement :: Encode DataRearrangement where encode = genericEncode options



-- | <p>The schema of a <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>. The DataSource schema is expressed in JSON format.</p> <p><code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code></p> <p>{ "version": "1.0", "recordAnnotationFieldName": "F1", "recordWeightFieldName": "F2", "targetFieldName": "F3", "dataFormat": "CSV", "dataFileContainsHeader": true, "variables": [ { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ], "excludedVariableNames": [ "F6" ] } </p>
newtype DataSchema = DataSchema String
derive instance newtypeDataSchema :: Newtype DataSchema _
derive instance repGenericDataSchema :: Generic DataSchema _
instance showDataSchema :: Show DataSchema where show = genericShow
instance decodeDataSchema :: Decode DataSchema where decode = genericDecode options
instance encodeDataSchema :: Encode DataSchema where encode = genericEncode options



-- | <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
newtype DataSource = DataSource 
  { "DataSourceId" :: NullOrUndefined (EntityId)
  , "DataLocationS3" :: NullOrUndefined (S3Url)
  , "DataRearrangement" :: NullOrUndefined (DataRearrangement)
  , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "LastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "DataSizeInBytes" :: NullOrUndefined (LongType)
  , "NumberOfFiles" :: NullOrUndefined (LongType)
  , "Name" :: NullOrUndefined (EntityName)
  , "Status" :: NullOrUndefined (EntityStatus)
  , "Message" :: NullOrUndefined (Message)
  , "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata)
  , "RDSMetadata" :: NullOrUndefined (RDSMetadata)
  , "RoleARN" :: NullOrUndefined (RoleARN)
  , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics)
  , "ComputeTime" :: NullOrUndefined (LongType)
  , "FinishedAt" :: NullOrUndefined (EpochTime)
  , "StartedAt" :: NullOrUndefined (EpochTime)
  }
derive instance newtypeDataSource :: Newtype DataSource _
derive instance repGenericDataSource :: Generic DataSource _
instance showDataSource :: Show DataSource where show = genericShow
instance decodeDataSource :: Decode DataSource where decode = genericDecode options
instance encodeDataSource :: Encode DataSource where encode = genericEncode options

-- | Constructs DataSource from required parameters
newDataSource :: DataSource
newDataSource  = DataSource { "ComputeStatistics": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "DataLocationS3": (NullOrUndefined Nothing), "DataRearrangement": (NullOrUndefined Nothing), "DataSizeInBytes": (NullOrUndefined Nothing), "DataSourceId": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NumberOfFiles": (NullOrUndefined Nothing), "RDSMetadata": (NullOrUndefined Nothing), "RedshiftMetadata": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs DataSource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataSource' :: ( { "DataSourceId" :: NullOrUndefined (EntityId) , "DataLocationS3" :: NullOrUndefined (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "DataSizeInBytes" :: NullOrUndefined (LongType) , "NumberOfFiles" :: NullOrUndefined (LongType) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "Message" :: NullOrUndefined (Message) , "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata) , "RDSMetadata" :: NullOrUndefined (RDSMetadata) , "RoleARN" :: NullOrUndefined (RoleARN) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) } -> {"DataSourceId" :: NullOrUndefined (EntityId) , "DataLocationS3" :: NullOrUndefined (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "DataSizeInBytes" :: NullOrUndefined (LongType) , "NumberOfFiles" :: NullOrUndefined (LongType) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "Message" :: NullOrUndefined (Message) , "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata) , "RDSMetadata" :: NullOrUndefined (RDSMetadata) , "RoleARN" :: NullOrUndefined (RoleARN) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) } ) -> DataSource
newDataSource'  customize = (DataSource <<< customize) { "ComputeStatistics": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "DataLocationS3": (NullOrUndefined Nothing), "DataRearrangement": (NullOrUndefined Nothing), "DataSizeInBytes": (NullOrUndefined Nothing), "DataSourceId": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NumberOfFiles": (NullOrUndefined Nothing), "RDSMetadata": (NullOrUndefined Nothing), "RedshiftMetadata": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>A list of the variables to use in searching or filtering <code>DataSource</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>DataSource</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> <b> </b> <code>Name</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</li> </ul> <note><title>Note</title> <p>The variable names should match the variable names in the <code>DataSource</code>.</p> </note>
newtype DataSourceFilterVariable = DataSourceFilterVariable String
derive instance newtypeDataSourceFilterVariable :: Newtype DataSourceFilterVariable _
derive instance repGenericDataSourceFilterVariable :: Generic DataSourceFilterVariable _
instance showDataSourceFilterVariable :: Show DataSourceFilterVariable where show = genericShow
instance decodeDataSourceFilterVariable :: Decode DataSourceFilterVariable where decode = genericDecode options
instance encodeDataSourceFilterVariable :: Encode DataSourceFilterVariable where encode = genericEncode options



newtype DataSources = DataSources (Array DataSource)
derive instance newtypeDataSources :: Newtype DataSources _
derive instance repGenericDataSources :: Generic DataSources _
instance showDataSources :: Show DataSources where show = genericShow
instance decodeDataSources :: Decode DataSources where decode = genericDecode options
instance encodeDataSources :: Encode DataSources where encode = genericEncode options



newtype DeleteBatchPredictionInput = DeleteBatchPredictionInput 
  { "BatchPredictionId" :: (EntityId)
  }
derive instance newtypeDeleteBatchPredictionInput :: Newtype DeleteBatchPredictionInput _
derive instance repGenericDeleteBatchPredictionInput :: Generic DeleteBatchPredictionInput _
instance showDeleteBatchPredictionInput :: Show DeleteBatchPredictionInput where show = genericShow
instance decodeDeleteBatchPredictionInput :: Decode DeleteBatchPredictionInput where decode = genericDecode options
instance encodeDeleteBatchPredictionInput :: Encode DeleteBatchPredictionInput where encode = genericEncode options

-- | Constructs DeleteBatchPredictionInput from required parameters
newDeleteBatchPredictionInput :: EntityId -> DeleteBatchPredictionInput
newDeleteBatchPredictionInput _BatchPredictionId = DeleteBatchPredictionInput { "BatchPredictionId": _BatchPredictionId }

-- | Constructs DeleteBatchPredictionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBatchPredictionInput' :: EntityId -> ( { "BatchPredictionId" :: (EntityId) } -> {"BatchPredictionId" :: (EntityId) } ) -> DeleteBatchPredictionInput
newDeleteBatchPredictionInput' _BatchPredictionId customize = (DeleteBatchPredictionInput <<< customize) { "BatchPredictionId": _BatchPredictionId }



-- | <p> Represents the output of a <code>DeleteBatchPrediction</code> operation.</p> <p>You can use the <code>GetBatchPrediction</code> operation and check the value of the <code>Status</code> parameter to see whether a <code>BatchPrediction</code> is marked as <code>DELETED</code>.</p>
newtype DeleteBatchPredictionOutput = DeleteBatchPredictionOutput 
  { "BatchPredictionId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeDeleteBatchPredictionOutput :: Newtype DeleteBatchPredictionOutput _
derive instance repGenericDeleteBatchPredictionOutput :: Generic DeleteBatchPredictionOutput _
instance showDeleteBatchPredictionOutput :: Show DeleteBatchPredictionOutput where show = genericShow
instance decodeDeleteBatchPredictionOutput :: Decode DeleteBatchPredictionOutput where decode = genericDecode options
instance encodeDeleteBatchPredictionOutput :: Encode DeleteBatchPredictionOutput where encode = genericEncode options

-- | Constructs DeleteBatchPredictionOutput from required parameters
newDeleteBatchPredictionOutput :: DeleteBatchPredictionOutput
newDeleteBatchPredictionOutput  = DeleteBatchPredictionOutput { "BatchPredictionId": (NullOrUndefined Nothing) }

-- | Constructs DeleteBatchPredictionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBatchPredictionOutput' :: ( { "BatchPredictionId" :: NullOrUndefined (EntityId) } -> {"BatchPredictionId" :: NullOrUndefined (EntityId) } ) -> DeleteBatchPredictionOutput
newDeleteBatchPredictionOutput'  customize = (DeleteBatchPredictionOutput <<< customize) { "BatchPredictionId": (NullOrUndefined Nothing) }



newtype DeleteDataSourceInput = DeleteDataSourceInput 
  { "DataSourceId" :: (EntityId)
  }
derive instance newtypeDeleteDataSourceInput :: Newtype DeleteDataSourceInput _
derive instance repGenericDeleteDataSourceInput :: Generic DeleteDataSourceInput _
instance showDeleteDataSourceInput :: Show DeleteDataSourceInput where show = genericShow
instance decodeDeleteDataSourceInput :: Decode DeleteDataSourceInput where decode = genericDecode options
instance encodeDeleteDataSourceInput :: Encode DeleteDataSourceInput where encode = genericEncode options

-- | Constructs DeleteDataSourceInput from required parameters
newDeleteDataSourceInput :: EntityId -> DeleteDataSourceInput
newDeleteDataSourceInput _DataSourceId = DeleteDataSourceInput { "DataSourceId": _DataSourceId }

-- | Constructs DeleteDataSourceInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDataSourceInput' :: EntityId -> ( { "DataSourceId" :: (EntityId) } -> {"DataSourceId" :: (EntityId) } ) -> DeleteDataSourceInput
newDeleteDataSourceInput' _DataSourceId customize = (DeleteDataSourceInput <<< customize) { "DataSourceId": _DataSourceId }



-- | <p> Represents the output of a <code>DeleteDataSource</code> operation.</p>
newtype DeleteDataSourceOutput = DeleteDataSourceOutput 
  { "DataSourceId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeDeleteDataSourceOutput :: Newtype DeleteDataSourceOutput _
derive instance repGenericDeleteDataSourceOutput :: Generic DeleteDataSourceOutput _
instance showDeleteDataSourceOutput :: Show DeleteDataSourceOutput where show = genericShow
instance decodeDeleteDataSourceOutput :: Decode DeleteDataSourceOutput where decode = genericDecode options
instance encodeDeleteDataSourceOutput :: Encode DeleteDataSourceOutput where encode = genericEncode options

-- | Constructs DeleteDataSourceOutput from required parameters
newDeleteDataSourceOutput :: DeleteDataSourceOutput
newDeleteDataSourceOutput  = DeleteDataSourceOutput { "DataSourceId": (NullOrUndefined Nothing) }

-- | Constructs DeleteDataSourceOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDataSourceOutput' :: ( { "DataSourceId" :: NullOrUndefined (EntityId) } -> {"DataSourceId" :: NullOrUndefined (EntityId) } ) -> DeleteDataSourceOutput
newDeleteDataSourceOutput'  customize = (DeleteDataSourceOutput <<< customize) { "DataSourceId": (NullOrUndefined Nothing) }



newtype DeleteEvaluationInput = DeleteEvaluationInput 
  { "EvaluationId" :: (EntityId)
  }
derive instance newtypeDeleteEvaluationInput :: Newtype DeleteEvaluationInput _
derive instance repGenericDeleteEvaluationInput :: Generic DeleteEvaluationInput _
instance showDeleteEvaluationInput :: Show DeleteEvaluationInput where show = genericShow
instance decodeDeleteEvaluationInput :: Decode DeleteEvaluationInput where decode = genericDecode options
instance encodeDeleteEvaluationInput :: Encode DeleteEvaluationInput where encode = genericEncode options

-- | Constructs DeleteEvaluationInput from required parameters
newDeleteEvaluationInput :: EntityId -> DeleteEvaluationInput
newDeleteEvaluationInput _EvaluationId = DeleteEvaluationInput { "EvaluationId": _EvaluationId }

-- | Constructs DeleteEvaluationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteEvaluationInput' :: EntityId -> ( { "EvaluationId" :: (EntityId) } -> {"EvaluationId" :: (EntityId) } ) -> DeleteEvaluationInput
newDeleteEvaluationInput' _EvaluationId customize = (DeleteEvaluationInput <<< customize) { "EvaluationId": _EvaluationId }



-- | <p> Represents the output of a <code>DeleteEvaluation</code> operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request.</p> <p>You can use the <code>GetEvaluation</code> operation and check the value of the <code>Status</code> parameter to see whether an <code>Evaluation</code> is marked as <code>DELETED</code>.</p>
newtype DeleteEvaluationOutput = DeleteEvaluationOutput 
  { "EvaluationId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeDeleteEvaluationOutput :: Newtype DeleteEvaluationOutput _
derive instance repGenericDeleteEvaluationOutput :: Generic DeleteEvaluationOutput _
instance showDeleteEvaluationOutput :: Show DeleteEvaluationOutput where show = genericShow
instance decodeDeleteEvaluationOutput :: Decode DeleteEvaluationOutput where decode = genericDecode options
instance encodeDeleteEvaluationOutput :: Encode DeleteEvaluationOutput where encode = genericEncode options

-- | Constructs DeleteEvaluationOutput from required parameters
newDeleteEvaluationOutput :: DeleteEvaluationOutput
newDeleteEvaluationOutput  = DeleteEvaluationOutput { "EvaluationId": (NullOrUndefined Nothing) }

-- | Constructs DeleteEvaluationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteEvaluationOutput' :: ( { "EvaluationId" :: NullOrUndefined (EntityId) } -> {"EvaluationId" :: NullOrUndefined (EntityId) } ) -> DeleteEvaluationOutput
newDeleteEvaluationOutput'  customize = (DeleteEvaluationOutput <<< customize) { "EvaluationId": (NullOrUndefined Nothing) }



newtype DeleteMLModelInput = DeleteMLModelInput 
  { "MLModelId" :: (EntityId)
  }
derive instance newtypeDeleteMLModelInput :: Newtype DeleteMLModelInput _
derive instance repGenericDeleteMLModelInput :: Generic DeleteMLModelInput _
instance showDeleteMLModelInput :: Show DeleteMLModelInput where show = genericShow
instance decodeDeleteMLModelInput :: Decode DeleteMLModelInput where decode = genericDecode options
instance encodeDeleteMLModelInput :: Encode DeleteMLModelInput where encode = genericEncode options

-- | Constructs DeleteMLModelInput from required parameters
newDeleteMLModelInput :: EntityId -> DeleteMLModelInput
newDeleteMLModelInput _MLModelId = DeleteMLModelInput { "MLModelId": _MLModelId }

-- | Constructs DeleteMLModelInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMLModelInput' :: EntityId -> ( { "MLModelId" :: (EntityId) } -> {"MLModelId" :: (EntityId) } ) -> DeleteMLModelInput
newDeleteMLModelInput' _MLModelId customize = (DeleteMLModelInput <<< customize) { "MLModelId": _MLModelId }



-- | <p>Represents the output of a <code>DeleteMLModel</code> operation.</p> <p>You can use the <code>GetMLModel</code> operation and check the value of the <code>Status</code> parameter to see whether an <code>MLModel</code> is marked as <code>DELETED</code>.</p>
newtype DeleteMLModelOutput = DeleteMLModelOutput 
  { "MLModelId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeDeleteMLModelOutput :: Newtype DeleteMLModelOutput _
derive instance repGenericDeleteMLModelOutput :: Generic DeleteMLModelOutput _
instance showDeleteMLModelOutput :: Show DeleteMLModelOutput where show = genericShow
instance decodeDeleteMLModelOutput :: Decode DeleteMLModelOutput where decode = genericDecode options
instance encodeDeleteMLModelOutput :: Encode DeleteMLModelOutput where encode = genericEncode options

-- | Constructs DeleteMLModelOutput from required parameters
newDeleteMLModelOutput :: DeleteMLModelOutput
newDeleteMLModelOutput  = DeleteMLModelOutput { "MLModelId": (NullOrUndefined Nothing) }

-- | Constructs DeleteMLModelOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMLModelOutput' :: ( { "MLModelId" :: NullOrUndefined (EntityId) } -> {"MLModelId" :: NullOrUndefined (EntityId) } ) -> DeleteMLModelOutput
newDeleteMLModelOutput'  customize = (DeleteMLModelOutput <<< customize) { "MLModelId": (NullOrUndefined Nothing) }



newtype DeleteRealtimeEndpointInput = DeleteRealtimeEndpointInput 
  { "MLModelId" :: (EntityId)
  }
derive instance newtypeDeleteRealtimeEndpointInput :: Newtype DeleteRealtimeEndpointInput _
derive instance repGenericDeleteRealtimeEndpointInput :: Generic DeleteRealtimeEndpointInput _
instance showDeleteRealtimeEndpointInput :: Show DeleteRealtimeEndpointInput where show = genericShow
instance decodeDeleteRealtimeEndpointInput :: Decode DeleteRealtimeEndpointInput where decode = genericDecode options
instance encodeDeleteRealtimeEndpointInput :: Encode DeleteRealtimeEndpointInput where encode = genericEncode options

-- | Constructs DeleteRealtimeEndpointInput from required parameters
newDeleteRealtimeEndpointInput :: EntityId -> DeleteRealtimeEndpointInput
newDeleteRealtimeEndpointInput _MLModelId = DeleteRealtimeEndpointInput { "MLModelId": _MLModelId }

-- | Constructs DeleteRealtimeEndpointInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRealtimeEndpointInput' :: EntityId -> ( { "MLModelId" :: (EntityId) } -> {"MLModelId" :: (EntityId) } ) -> DeleteRealtimeEndpointInput
newDeleteRealtimeEndpointInput' _MLModelId customize = (DeleteRealtimeEndpointInput <<< customize) { "MLModelId": _MLModelId }



-- | <p>Represents the output of an <code>DeleteRealtimeEndpoint</code> operation.</p> <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>. </p>
newtype DeleteRealtimeEndpointOutput = DeleteRealtimeEndpointOutput 
  { "MLModelId" :: NullOrUndefined (EntityId)
  , "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo)
  }
derive instance newtypeDeleteRealtimeEndpointOutput :: Newtype DeleteRealtimeEndpointOutput _
derive instance repGenericDeleteRealtimeEndpointOutput :: Generic DeleteRealtimeEndpointOutput _
instance showDeleteRealtimeEndpointOutput :: Show DeleteRealtimeEndpointOutput where show = genericShow
instance decodeDeleteRealtimeEndpointOutput :: Decode DeleteRealtimeEndpointOutput where decode = genericDecode options
instance encodeDeleteRealtimeEndpointOutput :: Encode DeleteRealtimeEndpointOutput where encode = genericEncode options

-- | Constructs DeleteRealtimeEndpointOutput from required parameters
newDeleteRealtimeEndpointOutput :: DeleteRealtimeEndpointOutput
newDeleteRealtimeEndpointOutput  = DeleteRealtimeEndpointOutput { "MLModelId": (NullOrUndefined Nothing), "RealtimeEndpointInfo": (NullOrUndefined Nothing) }

-- | Constructs DeleteRealtimeEndpointOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRealtimeEndpointOutput' :: ( { "MLModelId" :: NullOrUndefined (EntityId) , "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) } -> {"MLModelId" :: NullOrUndefined (EntityId) , "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) } ) -> DeleteRealtimeEndpointOutput
newDeleteRealtimeEndpointOutput'  customize = (DeleteRealtimeEndpointOutput <<< customize) { "MLModelId": (NullOrUndefined Nothing), "RealtimeEndpointInfo": (NullOrUndefined Nothing) }



newtype DeleteTagsInput = DeleteTagsInput 
  { "TagKeys" :: (TagKeyList)
  , "ResourceId" :: (EntityId)
  , "ResourceType" :: (TaggableResourceType)
  }
derive instance newtypeDeleteTagsInput :: Newtype DeleteTagsInput _
derive instance repGenericDeleteTagsInput :: Generic DeleteTagsInput _
instance showDeleteTagsInput :: Show DeleteTagsInput where show = genericShow
instance decodeDeleteTagsInput :: Decode DeleteTagsInput where decode = genericDecode options
instance encodeDeleteTagsInput :: Encode DeleteTagsInput where encode = genericEncode options

-- | Constructs DeleteTagsInput from required parameters
newDeleteTagsInput :: EntityId -> TaggableResourceType -> TagKeyList -> DeleteTagsInput
newDeleteTagsInput _ResourceId _ResourceType _TagKeys = DeleteTagsInput { "ResourceId": _ResourceId, "ResourceType": _ResourceType, "TagKeys": _TagKeys }

-- | Constructs DeleteTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTagsInput' :: EntityId -> TaggableResourceType -> TagKeyList -> ( { "TagKeys" :: (TagKeyList) , "ResourceId" :: (EntityId) , "ResourceType" :: (TaggableResourceType) } -> {"TagKeys" :: (TagKeyList) , "ResourceId" :: (EntityId) , "ResourceType" :: (TaggableResourceType) } ) -> DeleteTagsInput
newDeleteTagsInput' _ResourceId _ResourceType _TagKeys customize = (DeleteTagsInput <<< customize) { "ResourceId": _ResourceId, "ResourceType": _ResourceType, "TagKeys": _TagKeys }



-- | <p>Amazon ML returns the following elements. </p>
newtype DeleteTagsOutput = DeleteTagsOutput 
  { "ResourceId" :: NullOrUndefined (EntityId)
  , "ResourceType" :: NullOrUndefined (TaggableResourceType)
  }
derive instance newtypeDeleteTagsOutput :: Newtype DeleteTagsOutput _
derive instance repGenericDeleteTagsOutput :: Generic DeleteTagsOutput _
instance showDeleteTagsOutput :: Show DeleteTagsOutput where show = genericShow
instance decodeDeleteTagsOutput :: Decode DeleteTagsOutput where decode = genericDecode options
instance encodeDeleteTagsOutput :: Encode DeleteTagsOutput where encode = genericEncode options

-- | Constructs DeleteTagsOutput from required parameters
newDeleteTagsOutput :: DeleteTagsOutput
newDeleteTagsOutput  = DeleteTagsOutput { "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }

-- | Constructs DeleteTagsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTagsOutput' :: ( { "ResourceId" :: NullOrUndefined (EntityId) , "ResourceType" :: NullOrUndefined (TaggableResourceType) } -> {"ResourceId" :: NullOrUndefined (EntityId) , "ResourceType" :: NullOrUndefined (TaggableResourceType) } ) -> DeleteTagsOutput
newDeleteTagsOutput'  customize = (DeleteTagsOutput <<< customize) { "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }



newtype DescribeBatchPredictionsInput = DescribeBatchPredictionsInput 
  { "FilterVariable" :: NullOrUndefined (BatchPredictionFilterVariable)
  , "EQ" :: NullOrUndefined (ComparatorValue)
  , "GT" :: NullOrUndefined (ComparatorValue)
  , "LT" :: NullOrUndefined (ComparatorValue)
  , "GE" :: NullOrUndefined (ComparatorValue)
  , "LE" :: NullOrUndefined (ComparatorValue)
  , "NE" :: NullOrUndefined (ComparatorValue)
  , "Prefix" :: NullOrUndefined (ComparatorValue)
  , "SortOrder" :: NullOrUndefined (SortOrder)
  , "NextToken" :: NullOrUndefined (StringType)
  , "Limit" :: NullOrUndefined (PageLimit)
  }
derive instance newtypeDescribeBatchPredictionsInput :: Newtype DescribeBatchPredictionsInput _
derive instance repGenericDescribeBatchPredictionsInput :: Generic DescribeBatchPredictionsInput _
instance showDescribeBatchPredictionsInput :: Show DescribeBatchPredictionsInput where show = genericShow
instance decodeDescribeBatchPredictionsInput :: Decode DescribeBatchPredictionsInput where decode = genericDecode options
instance encodeDescribeBatchPredictionsInput :: Encode DescribeBatchPredictionsInput where encode = genericEncode options

-- | Constructs DescribeBatchPredictionsInput from required parameters
newDescribeBatchPredictionsInput :: DescribeBatchPredictionsInput
newDescribeBatchPredictionsInput  = DescribeBatchPredictionsInput { "EQ": (NullOrUndefined Nothing), "FilterVariable": (NullOrUndefined Nothing), "GE": (NullOrUndefined Nothing), "GT": (NullOrUndefined Nothing), "LE": (NullOrUndefined Nothing), "LT": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NE": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "SortOrder": (NullOrUndefined Nothing) }

-- | Constructs DescribeBatchPredictionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBatchPredictionsInput' :: ( { "FilterVariable" :: NullOrUndefined (BatchPredictionFilterVariable) , "EQ" :: NullOrUndefined (ComparatorValue) , "GT" :: NullOrUndefined (ComparatorValue) , "LT" :: NullOrUndefined (ComparatorValue) , "GE" :: NullOrUndefined (ComparatorValue) , "LE" :: NullOrUndefined (ComparatorValue) , "NE" :: NullOrUndefined (ComparatorValue) , "Prefix" :: NullOrUndefined (ComparatorValue) , "SortOrder" :: NullOrUndefined (SortOrder) , "NextToken" :: NullOrUndefined (StringType) , "Limit" :: NullOrUndefined (PageLimit) } -> {"FilterVariable" :: NullOrUndefined (BatchPredictionFilterVariable) , "EQ" :: NullOrUndefined (ComparatorValue) , "GT" :: NullOrUndefined (ComparatorValue) , "LT" :: NullOrUndefined (ComparatorValue) , "GE" :: NullOrUndefined (ComparatorValue) , "LE" :: NullOrUndefined (ComparatorValue) , "NE" :: NullOrUndefined (ComparatorValue) , "Prefix" :: NullOrUndefined (ComparatorValue) , "SortOrder" :: NullOrUndefined (SortOrder) , "NextToken" :: NullOrUndefined (StringType) , "Limit" :: NullOrUndefined (PageLimit) } ) -> DescribeBatchPredictionsInput
newDescribeBatchPredictionsInput'  customize = (DescribeBatchPredictionsInput <<< customize) { "EQ": (NullOrUndefined Nothing), "FilterVariable": (NullOrUndefined Nothing), "GE": (NullOrUndefined Nothing), "GT": (NullOrUndefined Nothing), "LE": (NullOrUndefined Nothing), "LT": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NE": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "SortOrder": (NullOrUndefined Nothing) }



-- | <p>Represents the output of a <code>DescribeBatchPredictions</code> operation. The content is essentially a list of <code>BatchPrediction</code>s.</p>
newtype DescribeBatchPredictionsOutput = DescribeBatchPredictionsOutput 
  { "Results" :: NullOrUndefined (BatchPredictions)
  , "NextToken" :: NullOrUndefined (StringType)
  }
derive instance newtypeDescribeBatchPredictionsOutput :: Newtype DescribeBatchPredictionsOutput _
derive instance repGenericDescribeBatchPredictionsOutput :: Generic DescribeBatchPredictionsOutput _
instance showDescribeBatchPredictionsOutput :: Show DescribeBatchPredictionsOutput where show = genericShow
instance decodeDescribeBatchPredictionsOutput :: Decode DescribeBatchPredictionsOutput where decode = genericDecode options
instance encodeDescribeBatchPredictionsOutput :: Encode DescribeBatchPredictionsOutput where encode = genericEncode options

-- | Constructs DescribeBatchPredictionsOutput from required parameters
newDescribeBatchPredictionsOutput :: DescribeBatchPredictionsOutput
newDescribeBatchPredictionsOutput  = DescribeBatchPredictionsOutput { "NextToken": (NullOrUndefined Nothing), "Results": (NullOrUndefined Nothing) }

-- | Constructs DescribeBatchPredictionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBatchPredictionsOutput' :: ( { "Results" :: NullOrUndefined (BatchPredictions) , "NextToken" :: NullOrUndefined (StringType) } -> {"Results" :: NullOrUndefined (BatchPredictions) , "NextToken" :: NullOrUndefined (StringType) } ) -> DescribeBatchPredictionsOutput
newDescribeBatchPredictionsOutput'  customize = (DescribeBatchPredictionsOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "Results": (NullOrUndefined Nothing) }



newtype DescribeDataSourcesInput = DescribeDataSourcesInput 
  { "FilterVariable" :: NullOrUndefined (DataSourceFilterVariable)
  , "EQ" :: NullOrUndefined (ComparatorValue)
  , "GT" :: NullOrUndefined (ComparatorValue)
  , "LT" :: NullOrUndefined (ComparatorValue)
  , "GE" :: NullOrUndefined (ComparatorValue)
  , "LE" :: NullOrUndefined (ComparatorValue)
  , "NE" :: NullOrUndefined (ComparatorValue)
  , "Prefix" :: NullOrUndefined (ComparatorValue)
  , "SortOrder" :: NullOrUndefined (SortOrder)
  , "NextToken" :: NullOrUndefined (StringType)
  , "Limit" :: NullOrUndefined (PageLimit)
  }
derive instance newtypeDescribeDataSourcesInput :: Newtype DescribeDataSourcesInput _
derive instance repGenericDescribeDataSourcesInput :: Generic DescribeDataSourcesInput _
instance showDescribeDataSourcesInput :: Show DescribeDataSourcesInput where show = genericShow
instance decodeDescribeDataSourcesInput :: Decode DescribeDataSourcesInput where decode = genericDecode options
instance encodeDescribeDataSourcesInput :: Encode DescribeDataSourcesInput where encode = genericEncode options

-- | Constructs DescribeDataSourcesInput from required parameters
newDescribeDataSourcesInput :: DescribeDataSourcesInput
newDescribeDataSourcesInput  = DescribeDataSourcesInput { "EQ": (NullOrUndefined Nothing), "FilterVariable": (NullOrUndefined Nothing), "GE": (NullOrUndefined Nothing), "GT": (NullOrUndefined Nothing), "LE": (NullOrUndefined Nothing), "LT": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NE": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "SortOrder": (NullOrUndefined Nothing) }

-- | Constructs DescribeDataSourcesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDataSourcesInput' :: ( { "FilterVariable" :: NullOrUndefined (DataSourceFilterVariable) , "EQ" :: NullOrUndefined (ComparatorValue) , "GT" :: NullOrUndefined (ComparatorValue) , "LT" :: NullOrUndefined (ComparatorValue) , "GE" :: NullOrUndefined (ComparatorValue) , "LE" :: NullOrUndefined (ComparatorValue) , "NE" :: NullOrUndefined (ComparatorValue) , "Prefix" :: NullOrUndefined (ComparatorValue) , "SortOrder" :: NullOrUndefined (SortOrder) , "NextToken" :: NullOrUndefined (StringType) , "Limit" :: NullOrUndefined (PageLimit) } -> {"FilterVariable" :: NullOrUndefined (DataSourceFilterVariable) , "EQ" :: NullOrUndefined (ComparatorValue) , "GT" :: NullOrUndefined (ComparatorValue) , "LT" :: NullOrUndefined (ComparatorValue) , "GE" :: NullOrUndefined (ComparatorValue) , "LE" :: NullOrUndefined (ComparatorValue) , "NE" :: NullOrUndefined (ComparatorValue) , "Prefix" :: NullOrUndefined (ComparatorValue) , "SortOrder" :: NullOrUndefined (SortOrder) , "NextToken" :: NullOrUndefined (StringType) , "Limit" :: NullOrUndefined (PageLimit) } ) -> DescribeDataSourcesInput
newDescribeDataSourcesInput'  customize = (DescribeDataSourcesInput <<< customize) { "EQ": (NullOrUndefined Nothing), "FilterVariable": (NullOrUndefined Nothing), "GE": (NullOrUndefined Nothing), "GT": (NullOrUndefined Nothing), "LE": (NullOrUndefined Nothing), "LT": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NE": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "SortOrder": (NullOrUndefined Nothing) }



-- | <p>Represents the query results from a <a>DescribeDataSources</a> operation. The content is essentially a list of <code>DataSource</code>.</p>
newtype DescribeDataSourcesOutput = DescribeDataSourcesOutput 
  { "Results" :: NullOrUndefined (DataSources)
  , "NextToken" :: NullOrUndefined (StringType)
  }
derive instance newtypeDescribeDataSourcesOutput :: Newtype DescribeDataSourcesOutput _
derive instance repGenericDescribeDataSourcesOutput :: Generic DescribeDataSourcesOutput _
instance showDescribeDataSourcesOutput :: Show DescribeDataSourcesOutput where show = genericShow
instance decodeDescribeDataSourcesOutput :: Decode DescribeDataSourcesOutput where decode = genericDecode options
instance encodeDescribeDataSourcesOutput :: Encode DescribeDataSourcesOutput where encode = genericEncode options

-- | Constructs DescribeDataSourcesOutput from required parameters
newDescribeDataSourcesOutput :: DescribeDataSourcesOutput
newDescribeDataSourcesOutput  = DescribeDataSourcesOutput { "NextToken": (NullOrUndefined Nothing), "Results": (NullOrUndefined Nothing) }

-- | Constructs DescribeDataSourcesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDataSourcesOutput' :: ( { "Results" :: NullOrUndefined (DataSources) , "NextToken" :: NullOrUndefined (StringType) } -> {"Results" :: NullOrUndefined (DataSources) , "NextToken" :: NullOrUndefined (StringType) } ) -> DescribeDataSourcesOutput
newDescribeDataSourcesOutput'  customize = (DescribeDataSourcesOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "Results": (NullOrUndefined Nothing) }



newtype DescribeEvaluationsInput = DescribeEvaluationsInput 
  { "FilterVariable" :: NullOrUndefined (EvaluationFilterVariable)
  , "EQ" :: NullOrUndefined (ComparatorValue)
  , "GT" :: NullOrUndefined (ComparatorValue)
  , "LT" :: NullOrUndefined (ComparatorValue)
  , "GE" :: NullOrUndefined (ComparatorValue)
  , "LE" :: NullOrUndefined (ComparatorValue)
  , "NE" :: NullOrUndefined (ComparatorValue)
  , "Prefix" :: NullOrUndefined (ComparatorValue)
  , "SortOrder" :: NullOrUndefined (SortOrder)
  , "NextToken" :: NullOrUndefined (StringType)
  , "Limit" :: NullOrUndefined (PageLimit)
  }
derive instance newtypeDescribeEvaluationsInput :: Newtype DescribeEvaluationsInput _
derive instance repGenericDescribeEvaluationsInput :: Generic DescribeEvaluationsInput _
instance showDescribeEvaluationsInput :: Show DescribeEvaluationsInput where show = genericShow
instance decodeDescribeEvaluationsInput :: Decode DescribeEvaluationsInput where decode = genericDecode options
instance encodeDescribeEvaluationsInput :: Encode DescribeEvaluationsInput where encode = genericEncode options

-- | Constructs DescribeEvaluationsInput from required parameters
newDescribeEvaluationsInput :: DescribeEvaluationsInput
newDescribeEvaluationsInput  = DescribeEvaluationsInput { "EQ": (NullOrUndefined Nothing), "FilterVariable": (NullOrUndefined Nothing), "GE": (NullOrUndefined Nothing), "GT": (NullOrUndefined Nothing), "LE": (NullOrUndefined Nothing), "LT": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NE": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "SortOrder": (NullOrUndefined Nothing) }

-- | Constructs DescribeEvaluationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEvaluationsInput' :: ( { "FilterVariable" :: NullOrUndefined (EvaluationFilterVariable) , "EQ" :: NullOrUndefined (ComparatorValue) , "GT" :: NullOrUndefined (ComparatorValue) , "LT" :: NullOrUndefined (ComparatorValue) , "GE" :: NullOrUndefined (ComparatorValue) , "LE" :: NullOrUndefined (ComparatorValue) , "NE" :: NullOrUndefined (ComparatorValue) , "Prefix" :: NullOrUndefined (ComparatorValue) , "SortOrder" :: NullOrUndefined (SortOrder) , "NextToken" :: NullOrUndefined (StringType) , "Limit" :: NullOrUndefined (PageLimit) } -> {"FilterVariable" :: NullOrUndefined (EvaluationFilterVariable) , "EQ" :: NullOrUndefined (ComparatorValue) , "GT" :: NullOrUndefined (ComparatorValue) , "LT" :: NullOrUndefined (ComparatorValue) , "GE" :: NullOrUndefined (ComparatorValue) , "LE" :: NullOrUndefined (ComparatorValue) , "NE" :: NullOrUndefined (ComparatorValue) , "Prefix" :: NullOrUndefined (ComparatorValue) , "SortOrder" :: NullOrUndefined (SortOrder) , "NextToken" :: NullOrUndefined (StringType) , "Limit" :: NullOrUndefined (PageLimit) } ) -> DescribeEvaluationsInput
newDescribeEvaluationsInput'  customize = (DescribeEvaluationsInput <<< customize) { "EQ": (NullOrUndefined Nothing), "FilterVariable": (NullOrUndefined Nothing), "GE": (NullOrUndefined Nothing), "GT": (NullOrUndefined Nothing), "LE": (NullOrUndefined Nothing), "LT": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NE": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "SortOrder": (NullOrUndefined Nothing) }



-- | <p>Represents the query results from a <code>DescribeEvaluations</code> operation. The content is essentially a list of <code>Evaluation</code>.</p>
newtype DescribeEvaluationsOutput = DescribeEvaluationsOutput 
  { "Results" :: NullOrUndefined (Evaluations)
  , "NextToken" :: NullOrUndefined (StringType)
  }
derive instance newtypeDescribeEvaluationsOutput :: Newtype DescribeEvaluationsOutput _
derive instance repGenericDescribeEvaluationsOutput :: Generic DescribeEvaluationsOutput _
instance showDescribeEvaluationsOutput :: Show DescribeEvaluationsOutput where show = genericShow
instance decodeDescribeEvaluationsOutput :: Decode DescribeEvaluationsOutput where decode = genericDecode options
instance encodeDescribeEvaluationsOutput :: Encode DescribeEvaluationsOutput where encode = genericEncode options

-- | Constructs DescribeEvaluationsOutput from required parameters
newDescribeEvaluationsOutput :: DescribeEvaluationsOutput
newDescribeEvaluationsOutput  = DescribeEvaluationsOutput { "NextToken": (NullOrUndefined Nothing), "Results": (NullOrUndefined Nothing) }

-- | Constructs DescribeEvaluationsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEvaluationsOutput' :: ( { "Results" :: NullOrUndefined (Evaluations) , "NextToken" :: NullOrUndefined (StringType) } -> {"Results" :: NullOrUndefined (Evaluations) , "NextToken" :: NullOrUndefined (StringType) } ) -> DescribeEvaluationsOutput
newDescribeEvaluationsOutput'  customize = (DescribeEvaluationsOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "Results": (NullOrUndefined Nothing) }



newtype DescribeMLModelsInput = DescribeMLModelsInput 
  { "FilterVariable" :: NullOrUndefined (MLModelFilterVariable)
  , "EQ" :: NullOrUndefined (ComparatorValue)
  , "GT" :: NullOrUndefined (ComparatorValue)
  , "LT" :: NullOrUndefined (ComparatorValue)
  , "GE" :: NullOrUndefined (ComparatorValue)
  , "LE" :: NullOrUndefined (ComparatorValue)
  , "NE" :: NullOrUndefined (ComparatorValue)
  , "Prefix" :: NullOrUndefined (ComparatorValue)
  , "SortOrder" :: NullOrUndefined (SortOrder)
  , "NextToken" :: NullOrUndefined (StringType)
  , "Limit" :: NullOrUndefined (PageLimit)
  }
derive instance newtypeDescribeMLModelsInput :: Newtype DescribeMLModelsInput _
derive instance repGenericDescribeMLModelsInput :: Generic DescribeMLModelsInput _
instance showDescribeMLModelsInput :: Show DescribeMLModelsInput where show = genericShow
instance decodeDescribeMLModelsInput :: Decode DescribeMLModelsInput where decode = genericDecode options
instance encodeDescribeMLModelsInput :: Encode DescribeMLModelsInput where encode = genericEncode options

-- | Constructs DescribeMLModelsInput from required parameters
newDescribeMLModelsInput :: DescribeMLModelsInput
newDescribeMLModelsInput  = DescribeMLModelsInput { "EQ": (NullOrUndefined Nothing), "FilterVariable": (NullOrUndefined Nothing), "GE": (NullOrUndefined Nothing), "GT": (NullOrUndefined Nothing), "LE": (NullOrUndefined Nothing), "LT": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NE": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "SortOrder": (NullOrUndefined Nothing) }

-- | Constructs DescribeMLModelsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMLModelsInput' :: ( { "FilterVariable" :: NullOrUndefined (MLModelFilterVariable) , "EQ" :: NullOrUndefined (ComparatorValue) , "GT" :: NullOrUndefined (ComparatorValue) , "LT" :: NullOrUndefined (ComparatorValue) , "GE" :: NullOrUndefined (ComparatorValue) , "LE" :: NullOrUndefined (ComparatorValue) , "NE" :: NullOrUndefined (ComparatorValue) , "Prefix" :: NullOrUndefined (ComparatorValue) , "SortOrder" :: NullOrUndefined (SortOrder) , "NextToken" :: NullOrUndefined (StringType) , "Limit" :: NullOrUndefined (PageLimit) } -> {"FilterVariable" :: NullOrUndefined (MLModelFilterVariable) , "EQ" :: NullOrUndefined (ComparatorValue) , "GT" :: NullOrUndefined (ComparatorValue) , "LT" :: NullOrUndefined (ComparatorValue) , "GE" :: NullOrUndefined (ComparatorValue) , "LE" :: NullOrUndefined (ComparatorValue) , "NE" :: NullOrUndefined (ComparatorValue) , "Prefix" :: NullOrUndefined (ComparatorValue) , "SortOrder" :: NullOrUndefined (SortOrder) , "NextToken" :: NullOrUndefined (StringType) , "Limit" :: NullOrUndefined (PageLimit) } ) -> DescribeMLModelsInput
newDescribeMLModelsInput'  customize = (DescribeMLModelsInput <<< customize) { "EQ": (NullOrUndefined Nothing), "FilterVariable": (NullOrUndefined Nothing), "GE": (NullOrUndefined Nothing), "GT": (NullOrUndefined Nothing), "LE": (NullOrUndefined Nothing), "LT": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NE": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "SortOrder": (NullOrUndefined Nothing) }



-- | <p>Represents the output of a <code>DescribeMLModels</code> operation. The content is essentially a list of <code>MLModel</code>.</p>
newtype DescribeMLModelsOutput = DescribeMLModelsOutput 
  { "Results" :: NullOrUndefined (MLModels)
  , "NextToken" :: NullOrUndefined (StringType)
  }
derive instance newtypeDescribeMLModelsOutput :: Newtype DescribeMLModelsOutput _
derive instance repGenericDescribeMLModelsOutput :: Generic DescribeMLModelsOutput _
instance showDescribeMLModelsOutput :: Show DescribeMLModelsOutput where show = genericShow
instance decodeDescribeMLModelsOutput :: Decode DescribeMLModelsOutput where decode = genericDecode options
instance encodeDescribeMLModelsOutput :: Encode DescribeMLModelsOutput where encode = genericEncode options

-- | Constructs DescribeMLModelsOutput from required parameters
newDescribeMLModelsOutput :: DescribeMLModelsOutput
newDescribeMLModelsOutput  = DescribeMLModelsOutput { "NextToken": (NullOrUndefined Nothing), "Results": (NullOrUndefined Nothing) }

-- | Constructs DescribeMLModelsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMLModelsOutput' :: ( { "Results" :: NullOrUndefined (MLModels) , "NextToken" :: NullOrUndefined (StringType) } -> {"Results" :: NullOrUndefined (MLModels) , "NextToken" :: NullOrUndefined (StringType) } ) -> DescribeMLModelsOutput
newDescribeMLModelsOutput'  customize = (DescribeMLModelsOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "Results": (NullOrUndefined Nothing) }



newtype DescribeTagsInput = DescribeTagsInput 
  { "ResourceId" :: (EntityId)
  , "ResourceType" :: (TaggableResourceType)
  }
derive instance newtypeDescribeTagsInput :: Newtype DescribeTagsInput _
derive instance repGenericDescribeTagsInput :: Generic DescribeTagsInput _
instance showDescribeTagsInput :: Show DescribeTagsInput where show = genericShow
instance decodeDescribeTagsInput :: Decode DescribeTagsInput where decode = genericDecode options
instance encodeDescribeTagsInput :: Encode DescribeTagsInput where encode = genericEncode options

-- | Constructs DescribeTagsInput from required parameters
newDescribeTagsInput :: EntityId -> TaggableResourceType -> DescribeTagsInput
newDescribeTagsInput _ResourceId _ResourceType = DescribeTagsInput { "ResourceId": _ResourceId, "ResourceType": _ResourceType }

-- | Constructs DescribeTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTagsInput' :: EntityId -> TaggableResourceType -> ( { "ResourceId" :: (EntityId) , "ResourceType" :: (TaggableResourceType) } -> {"ResourceId" :: (EntityId) , "ResourceType" :: (TaggableResourceType) } ) -> DescribeTagsInput
newDescribeTagsInput' _ResourceId _ResourceType customize = (DescribeTagsInput <<< customize) { "ResourceId": _ResourceId, "ResourceType": _ResourceType }



-- | <p>Amazon ML returns the following elements. </p>
newtype DescribeTagsOutput = DescribeTagsOutput 
  { "ResourceId" :: NullOrUndefined (EntityId)
  , "ResourceType" :: NullOrUndefined (TaggableResourceType)
  , "Tags" :: NullOrUndefined (TagList)
  }
derive instance newtypeDescribeTagsOutput :: Newtype DescribeTagsOutput _
derive instance repGenericDescribeTagsOutput :: Generic DescribeTagsOutput _
instance showDescribeTagsOutput :: Show DescribeTagsOutput where show = genericShow
instance decodeDescribeTagsOutput :: Decode DescribeTagsOutput where decode = genericDecode options
instance encodeDescribeTagsOutput :: Encode DescribeTagsOutput where encode = genericEncode options

-- | Constructs DescribeTagsOutput from required parameters
newDescribeTagsOutput :: DescribeTagsOutput
newDescribeTagsOutput  = DescribeTagsOutput { "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs DescribeTagsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTagsOutput' :: ( { "ResourceId" :: NullOrUndefined (EntityId) , "ResourceType" :: NullOrUndefined (TaggableResourceType) , "Tags" :: NullOrUndefined (TagList) } -> {"ResourceId" :: NullOrUndefined (EntityId) , "ResourceType" :: NullOrUndefined (TaggableResourceType) , "Tags" :: NullOrUndefined (TagList) } ) -> DescribeTagsOutput
newDescribeTagsOutput'  customize = (DescribeTagsOutput <<< customize) { "ResourceId": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



-- | Contains the key values of <code>DetailsMap</code>: <code>PredictiveModelType</code> - Indicates the type of the <code>MLModel</code>. <code>Algorithm</code> - Indicates the algorithm that was used for the <code>MLModel</code>.
newtype DetailsAttributes = DetailsAttributes String
derive instance newtypeDetailsAttributes :: Newtype DetailsAttributes _
derive instance repGenericDetailsAttributes :: Generic DetailsAttributes _
instance showDetailsAttributes :: Show DetailsAttributes where show = genericShow
instance decodeDetailsAttributes :: Decode DetailsAttributes where decode = genericDecode options
instance encodeDetailsAttributes :: Encode DetailsAttributes where encode = genericEncode options



-- | Provides any additional details regarding the prediction.
newtype DetailsMap = DetailsMap (StrMap.StrMap DetailsValue)
derive instance newtypeDetailsMap :: Newtype DetailsMap _
derive instance repGenericDetailsMap :: Generic DetailsMap _
instance showDetailsMap :: Show DetailsMap where show = genericShow
instance decodeDetailsMap :: Decode DetailsMap where decode = genericDecode options
instance encodeDetailsMap :: Encode DetailsMap where encode = genericEncode options



newtype DetailsValue = DetailsValue String
derive instance newtypeDetailsValue :: Newtype DetailsValue _
derive instance repGenericDetailsValue :: Generic DetailsValue _
instance showDetailsValue :: Show DetailsValue where show = genericShow
instance decodeDetailsValue :: Decode DetailsValue where decode = genericDecode options
instance encodeDetailsValue :: Encode DetailsValue where encode = genericEncode options



newtype EDPPipelineId = EDPPipelineId String
derive instance newtypeEDPPipelineId :: Newtype EDPPipelineId _
derive instance repGenericEDPPipelineId :: Generic EDPPipelineId _
instance showEDPPipelineId :: Show EDPPipelineId where show = genericShow
instance decodeEDPPipelineId :: Decode EDPPipelineId where decode = genericDecode options
instance encodeEDPPipelineId :: Encode EDPPipelineId where encode = genericEncode options



newtype EDPResourceRole = EDPResourceRole String
derive instance newtypeEDPResourceRole :: Newtype EDPResourceRole _
derive instance repGenericEDPResourceRole :: Generic EDPResourceRole _
instance showEDPResourceRole :: Show EDPResourceRole where show = genericShow
instance decodeEDPResourceRole :: Decode EDPResourceRole where decode = genericDecode options
instance encodeEDPResourceRole :: Encode EDPResourceRole where encode = genericEncode options



newtype EDPSecurityGroupId = EDPSecurityGroupId String
derive instance newtypeEDPSecurityGroupId :: Newtype EDPSecurityGroupId _
derive instance repGenericEDPSecurityGroupId :: Generic EDPSecurityGroupId _
instance showEDPSecurityGroupId :: Show EDPSecurityGroupId where show = genericShow
instance decodeEDPSecurityGroupId :: Decode EDPSecurityGroupId where decode = genericDecode options
instance encodeEDPSecurityGroupId :: Encode EDPSecurityGroupId where encode = genericEncode options



newtype EDPSecurityGroupIds = EDPSecurityGroupIds (Array EDPSecurityGroupId)
derive instance newtypeEDPSecurityGroupIds :: Newtype EDPSecurityGroupIds _
derive instance repGenericEDPSecurityGroupIds :: Generic EDPSecurityGroupIds _
instance showEDPSecurityGroupIds :: Show EDPSecurityGroupIds where show = genericShow
instance decodeEDPSecurityGroupIds :: Decode EDPSecurityGroupIds where decode = genericDecode options
instance encodeEDPSecurityGroupIds :: Encode EDPSecurityGroupIds where encode = genericEncode options



newtype EDPServiceRole = EDPServiceRole String
derive instance newtypeEDPServiceRole :: Newtype EDPServiceRole _
derive instance repGenericEDPServiceRole :: Generic EDPServiceRole _
instance showEDPServiceRole :: Show EDPServiceRole where show = genericShow
instance decodeEDPServiceRole :: Decode EDPServiceRole where decode = genericDecode options
instance encodeEDPServiceRole :: Encode EDPServiceRole where encode = genericEncode options



newtype EDPSubnetId = EDPSubnetId String
derive instance newtypeEDPSubnetId :: Newtype EDPSubnetId _
derive instance repGenericEDPSubnetId :: Generic EDPSubnetId _
instance showEDPSubnetId :: Show EDPSubnetId where show = genericShow
instance decodeEDPSubnetId :: Decode EDPSubnetId where decode = genericDecode options
instance encodeEDPSubnetId :: Encode EDPSubnetId where encode = genericEncode options



newtype EntityId = EntityId String
derive instance newtypeEntityId :: Newtype EntityId _
derive instance repGenericEntityId :: Generic EntityId _
instance showEntityId :: Show EntityId where show = genericShow
instance decodeEntityId :: Decode EntityId where decode = genericDecode options
instance encodeEntityId :: Encode EntityId where encode = genericEncode options



-- | <p>A user-supplied name or description of the Amazon ML resource.</p>
newtype EntityName = EntityName String
derive instance newtypeEntityName :: Newtype EntityName _
derive instance repGenericEntityName :: Generic EntityName _
instance showEntityName :: Show EntityName where show = genericShow
instance decodeEntityName :: Decode EntityName where decode = genericDecode options
instance encodeEntityName :: Encode EntityName where encode = genericEncode options



-- | <p>Object status with the following possible values:</p> <ul> <li><code>PENDING</code></li> <li><code>INPROGRESS</code></li> <li><code>FAILED</code></li> <li><code>COMPLETED</code></li> <li><code>DELETED</code></li> </ul>
newtype EntityStatus = EntityStatus String
derive instance newtypeEntityStatus :: Newtype EntityStatus _
derive instance repGenericEntityStatus :: Generic EntityStatus _
instance showEntityStatus :: Show EntityStatus where show = genericShow
instance decodeEntityStatus :: Decode EntityStatus where decode = genericDecode options
instance encodeEntityStatus :: Encode EntityStatus where encode = genericEncode options



-- | <p>A timestamp represented in epoch time.</p>
newtype EpochTime = EpochTime Types.Timestamp
derive instance newtypeEpochTime :: Newtype EpochTime _
derive instance repGenericEpochTime :: Generic EpochTime _
instance showEpochTime :: Show EpochTime where show = genericShow
instance decodeEpochTime :: Decode EpochTime where decode = genericDecode options
instance encodeEpochTime :: Encode EpochTime where encode = genericEncode options



newtype ErrorCode = ErrorCode Int
derive instance newtypeErrorCode :: Newtype ErrorCode _
derive instance repGenericErrorCode :: Generic ErrorCode _
instance showErrorCode :: Show ErrorCode where show = genericShow
instance decodeErrorCode :: Decode ErrorCode where decode = genericDecode options
instance encodeErrorCode :: Encode ErrorCode where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>
newtype Evaluation = Evaluation 
  { "EvaluationId" :: NullOrUndefined (EntityId)
  , "MLModelId" :: NullOrUndefined (EntityId)
  , "EvaluationDataSourceId" :: NullOrUndefined (EntityId)
  , "InputDataLocationS3" :: NullOrUndefined (S3Url)
  , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "LastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "Name" :: NullOrUndefined (EntityName)
  , "Status" :: NullOrUndefined (EntityStatus)
  , "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics)
  , "Message" :: NullOrUndefined (Message)
  , "ComputeTime" :: NullOrUndefined (LongType)
  , "FinishedAt" :: NullOrUndefined (EpochTime)
  , "StartedAt" :: NullOrUndefined (EpochTime)
  }
derive instance newtypeEvaluation :: Newtype Evaluation _
derive instance repGenericEvaluation :: Generic Evaluation _
instance showEvaluation :: Show Evaluation where show = genericShow
instance decodeEvaluation :: Decode Evaluation where decode = genericDecode options
instance encodeEvaluation :: Encode Evaluation where encode = genericEncode options

-- | Constructs Evaluation from required parameters
newEvaluation :: Evaluation
newEvaluation  = Evaluation { "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "EvaluationDataSourceId": (NullOrUndefined Nothing), "EvaluationId": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PerformanceMetrics": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs Evaluation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvaluation' :: ( { "EvaluationId" :: NullOrUndefined (EntityId) , "MLModelId" :: NullOrUndefined (EntityId) , "EvaluationDataSourceId" :: NullOrUndefined (EntityId) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) } -> {"EvaluationId" :: NullOrUndefined (EntityId) , "MLModelId" :: NullOrUndefined (EntityId) , "EvaluationDataSourceId" :: NullOrUndefined (EntityId) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) } ) -> Evaluation
newEvaluation'  customize = (Evaluation <<< customize) { "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "EvaluationDataSourceId": (NullOrUndefined Nothing), "EvaluationId": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PerformanceMetrics": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>A list of the variables to use in searching or filtering <code>Evaluation</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>Evaluation</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>Evaluation</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> <b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked an evaluation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>Predictor</code> that was evaluated.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in evaluation.</li> <li> <code>DataUri</code> - Sets the search criteria to the data file(s) used in evaluation. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
newtype EvaluationFilterVariable = EvaluationFilterVariable String
derive instance newtypeEvaluationFilterVariable :: Newtype EvaluationFilterVariable _
derive instance repGenericEvaluationFilterVariable :: Generic EvaluationFilterVariable _
instance showEvaluationFilterVariable :: Show EvaluationFilterVariable where show = genericShow
instance decodeEvaluationFilterVariable :: Decode EvaluationFilterVariable where decode = genericDecode options
instance encodeEvaluationFilterVariable :: Encode EvaluationFilterVariable where encode = genericEncode options



newtype Evaluations = Evaluations (Array Evaluation)
derive instance newtypeEvaluations :: Newtype Evaluations _
derive instance repGenericEvaluations :: Generic Evaluations _
instance showEvaluations :: Show Evaluations where show = genericShow
instance decodeEvaluations :: Decode Evaluations where decode = genericDecode options
instance encodeEvaluations :: Encode Evaluations where encode = genericEncode options



newtype GetBatchPredictionInput = GetBatchPredictionInput 
  { "BatchPredictionId" :: (EntityId)
  }
derive instance newtypeGetBatchPredictionInput :: Newtype GetBatchPredictionInput _
derive instance repGenericGetBatchPredictionInput :: Generic GetBatchPredictionInput _
instance showGetBatchPredictionInput :: Show GetBatchPredictionInput where show = genericShow
instance decodeGetBatchPredictionInput :: Decode GetBatchPredictionInput where decode = genericDecode options
instance encodeGetBatchPredictionInput :: Encode GetBatchPredictionInput where encode = genericEncode options

-- | Constructs GetBatchPredictionInput from required parameters
newGetBatchPredictionInput :: EntityId -> GetBatchPredictionInput
newGetBatchPredictionInput _BatchPredictionId = GetBatchPredictionInput { "BatchPredictionId": _BatchPredictionId }

-- | Constructs GetBatchPredictionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBatchPredictionInput' :: EntityId -> ( { "BatchPredictionId" :: (EntityId) } -> {"BatchPredictionId" :: (EntityId) } ) -> GetBatchPredictionInput
newGetBatchPredictionInput' _BatchPredictionId customize = (GetBatchPredictionInput <<< customize) { "BatchPredictionId": _BatchPredictionId }



-- | <p>Represents the output of a <code>GetBatchPrediction</code> operation and describes a <code>BatchPrediction</code>.</p>
newtype GetBatchPredictionOutput = GetBatchPredictionOutput 
  { "BatchPredictionId" :: NullOrUndefined (EntityId)
  , "MLModelId" :: NullOrUndefined (EntityId)
  , "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId)
  , "InputDataLocationS3" :: NullOrUndefined (S3Url)
  , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "LastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "Name" :: NullOrUndefined (EntityName)
  , "Status" :: NullOrUndefined (EntityStatus)
  , "OutputUri" :: NullOrUndefined (S3Url)
  , "LogUri" :: NullOrUndefined (PresignedS3Url)
  , "Message" :: NullOrUndefined (Message)
  , "ComputeTime" :: NullOrUndefined (LongType)
  , "FinishedAt" :: NullOrUndefined (EpochTime)
  , "StartedAt" :: NullOrUndefined (EpochTime)
  , "TotalRecordCount" :: NullOrUndefined (LongType)
  , "InvalidRecordCount" :: NullOrUndefined (LongType)
  }
derive instance newtypeGetBatchPredictionOutput :: Newtype GetBatchPredictionOutput _
derive instance repGenericGetBatchPredictionOutput :: Generic GetBatchPredictionOutput _
instance showGetBatchPredictionOutput :: Show GetBatchPredictionOutput where show = genericShow
instance decodeGetBatchPredictionOutput :: Decode GetBatchPredictionOutput where decode = genericDecode options
instance encodeGetBatchPredictionOutput :: Encode GetBatchPredictionOutput where encode = genericEncode options

-- | Constructs GetBatchPredictionOutput from required parameters
newGetBatchPredictionOutput :: GetBatchPredictionOutput
newGetBatchPredictionOutput  = GetBatchPredictionOutput { "BatchPredictionDataSourceId": (NullOrUndefined Nothing), "BatchPredictionId": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "InvalidRecordCount": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "OutputUri": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TotalRecordCount": (NullOrUndefined Nothing) }

-- | Constructs GetBatchPredictionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBatchPredictionOutput' :: ( { "BatchPredictionId" :: NullOrUndefined (EntityId) , "MLModelId" :: NullOrUndefined (EntityId) , "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "OutputUri" :: NullOrUndefined (S3Url) , "LogUri" :: NullOrUndefined (PresignedS3Url) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) , "TotalRecordCount" :: NullOrUndefined (LongType) , "InvalidRecordCount" :: NullOrUndefined (LongType) } -> {"BatchPredictionId" :: NullOrUndefined (EntityId) , "MLModelId" :: NullOrUndefined (EntityId) , "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "OutputUri" :: NullOrUndefined (S3Url) , "LogUri" :: NullOrUndefined (PresignedS3Url) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) , "TotalRecordCount" :: NullOrUndefined (LongType) , "InvalidRecordCount" :: NullOrUndefined (LongType) } ) -> GetBatchPredictionOutput
newGetBatchPredictionOutput'  customize = (GetBatchPredictionOutput <<< customize) { "BatchPredictionDataSourceId": (NullOrUndefined Nothing), "BatchPredictionId": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "InvalidRecordCount": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "OutputUri": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TotalRecordCount": (NullOrUndefined Nothing) }



newtype GetDataSourceInput = GetDataSourceInput 
  { "DataSourceId" :: (EntityId)
  , "Verbose" :: NullOrUndefined (Verbose)
  }
derive instance newtypeGetDataSourceInput :: Newtype GetDataSourceInput _
derive instance repGenericGetDataSourceInput :: Generic GetDataSourceInput _
instance showGetDataSourceInput :: Show GetDataSourceInput where show = genericShow
instance decodeGetDataSourceInput :: Decode GetDataSourceInput where decode = genericDecode options
instance encodeGetDataSourceInput :: Encode GetDataSourceInput where encode = genericEncode options

-- | Constructs GetDataSourceInput from required parameters
newGetDataSourceInput :: EntityId -> GetDataSourceInput
newGetDataSourceInput _DataSourceId = GetDataSourceInput { "DataSourceId": _DataSourceId, "Verbose": (NullOrUndefined Nothing) }

-- | Constructs GetDataSourceInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDataSourceInput' :: EntityId -> ( { "DataSourceId" :: (EntityId) , "Verbose" :: NullOrUndefined (Verbose) } -> {"DataSourceId" :: (EntityId) , "Verbose" :: NullOrUndefined (Verbose) } ) -> GetDataSourceInput
newGetDataSourceInput' _DataSourceId customize = (GetDataSourceInput <<< customize) { "DataSourceId": _DataSourceId, "Verbose": (NullOrUndefined Nothing) }



-- | <p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>
newtype GetDataSourceOutput = GetDataSourceOutput 
  { "DataSourceId" :: NullOrUndefined (EntityId)
  , "DataLocationS3" :: NullOrUndefined (S3Url)
  , "DataRearrangement" :: NullOrUndefined (DataRearrangement)
  , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "LastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "DataSizeInBytes" :: NullOrUndefined (LongType)
  , "NumberOfFiles" :: NullOrUndefined (LongType)
  , "Name" :: NullOrUndefined (EntityName)
  , "Status" :: NullOrUndefined (EntityStatus)
  , "LogUri" :: NullOrUndefined (PresignedS3Url)
  , "Message" :: NullOrUndefined (Message)
  , "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata)
  , "RDSMetadata" :: NullOrUndefined (RDSMetadata)
  , "RoleARN" :: NullOrUndefined (RoleARN)
  , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics)
  , "ComputeTime" :: NullOrUndefined (LongType)
  , "FinishedAt" :: NullOrUndefined (EpochTime)
  , "StartedAt" :: NullOrUndefined (EpochTime)
  , "DataSourceSchema" :: NullOrUndefined (DataSchema)
  }
derive instance newtypeGetDataSourceOutput :: Newtype GetDataSourceOutput _
derive instance repGenericGetDataSourceOutput :: Generic GetDataSourceOutput _
instance showGetDataSourceOutput :: Show GetDataSourceOutput where show = genericShow
instance decodeGetDataSourceOutput :: Decode GetDataSourceOutput where decode = genericDecode options
instance encodeGetDataSourceOutput :: Encode GetDataSourceOutput where encode = genericEncode options

-- | Constructs GetDataSourceOutput from required parameters
newGetDataSourceOutput :: GetDataSourceOutput
newGetDataSourceOutput  = GetDataSourceOutput { "ComputeStatistics": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "DataLocationS3": (NullOrUndefined Nothing), "DataRearrangement": (NullOrUndefined Nothing), "DataSizeInBytes": (NullOrUndefined Nothing), "DataSourceId": (NullOrUndefined Nothing), "DataSourceSchema": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NumberOfFiles": (NullOrUndefined Nothing), "RDSMetadata": (NullOrUndefined Nothing), "RedshiftMetadata": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs GetDataSourceOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDataSourceOutput' :: ( { "DataSourceId" :: NullOrUndefined (EntityId) , "DataLocationS3" :: NullOrUndefined (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "DataSizeInBytes" :: NullOrUndefined (LongType) , "NumberOfFiles" :: NullOrUndefined (LongType) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "LogUri" :: NullOrUndefined (PresignedS3Url) , "Message" :: NullOrUndefined (Message) , "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata) , "RDSMetadata" :: NullOrUndefined (RDSMetadata) , "RoleARN" :: NullOrUndefined (RoleARN) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) , "DataSourceSchema" :: NullOrUndefined (DataSchema) } -> {"DataSourceId" :: NullOrUndefined (EntityId) , "DataLocationS3" :: NullOrUndefined (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "DataSizeInBytes" :: NullOrUndefined (LongType) , "NumberOfFiles" :: NullOrUndefined (LongType) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "LogUri" :: NullOrUndefined (PresignedS3Url) , "Message" :: NullOrUndefined (Message) , "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata) , "RDSMetadata" :: NullOrUndefined (RDSMetadata) , "RoleARN" :: NullOrUndefined (RoleARN) , "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) , "DataSourceSchema" :: NullOrUndefined (DataSchema) } ) -> GetDataSourceOutput
newGetDataSourceOutput'  customize = (GetDataSourceOutput <<< customize) { "ComputeStatistics": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "DataLocationS3": (NullOrUndefined Nothing), "DataRearrangement": (NullOrUndefined Nothing), "DataSizeInBytes": (NullOrUndefined Nothing), "DataSourceId": (NullOrUndefined Nothing), "DataSourceSchema": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NumberOfFiles": (NullOrUndefined Nothing), "RDSMetadata": (NullOrUndefined Nothing), "RedshiftMetadata": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype GetEvaluationInput = GetEvaluationInput 
  { "EvaluationId" :: (EntityId)
  }
derive instance newtypeGetEvaluationInput :: Newtype GetEvaluationInput _
derive instance repGenericGetEvaluationInput :: Generic GetEvaluationInput _
instance showGetEvaluationInput :: Show GetEvaluationInput where show = genericShow
instance decodeGetEvaluationInput :: Decode GetEvaluationInput where decode = genericDecode options
instance encodeGetEvaluationInput :: Encode GetEvaluationInput where encode = genericEncode options

-- | Constructs GetEvaluationInput from required parameters
newGetEvaluationInput :: EntityId -> GetEvaluationInput
newGetEvaluationInput _EvaluationId = GetEvaluationInput { "EvaluationId": _EvaluationId }

-- | Constructs GetEvaluationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEvaluationInput' :: EntityId -> ( { "EvaluationId" :: (EntityId) } -> {"EvaluationId" :: (EntityId) } ) -> GetEvaluationInput
newGetEvaluationInput' _EvaluationId customize = (GetEvaluationInput <<< customize) { "EvaluationId": _EvaluationId }



-- | <p>Represents the output of a <code>GetEvaluation</code> operation and describes an <code>Evaluation</code>.</p>
newtype GetEvaluationOutput = GetEvaluationOutput 
  { "EvaluationId" :: NullOrUndefined (EntityId)
  , "MLModelId" :: NullOrUndefined (EntityId)
  , "EvaluationDataSourceId" :: NullOrUndefined (EntityId)
  , "InputDataLocationS3" :: NullOrUndefined (S3Url)
  , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "LastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "Name" :: NullOrUndefined (EntityName)
  , "Status" :: NullOrUndefined (EntityStatus)
  , "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics)
  , "LogUri" :: NullOrUndefined (PresignedS3Url)
  , "Message" :: NullOrUndefined (Message)
  , "ComputeTime" :: NullOrUndefined (LongType)
  , "FinishedAt" :: NullOrUndefined (EpochTime)
  , "StartedAt" :: NullOrUndefined (EpochTime)
  }
derive instance newtypeGetEvaluationOutput :: Newtype GetEvaluationOutput _
derive instance repGenericGetEvaluationOutput :: Generic GetEvaluationOutput _
instance showGetEvaluationOutput :: Show GetEvaluationOutput where show = genericShow
instance decodeGetEvaluationOutput :: Decode GetEvaluationOutput where decode = genericDecode options
instance encodeGetEvaluationOutput :: Encode GetEvaluationOutput where encode = genericEncode options

-- | Constructs GetEvaluationOutput from required parameters
newGetEvaluationOutput :: GetEvaluationOutput
newGetEvaluationOutput  = GetEvaluationOutput { "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "EvaluationDataSourceId": (NullOrUndefined Nothing), "EvaluationId": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PerformanceMetrics": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs GetEvaluationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEvaluationOutput' :: ( { "EvaluationId" :: NullOrUndefined (EntityId) , "MLModelId" :: NullOrUndefined (EntityId) , "EvaluationDataSourceId" :: NullOrUndefined (EntityId) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics) , "LogUri" :: NullOrUndefined (PresignedS3Url) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) } -> {"EvaluationId" :: NullOrUndefined (EntityId) , "MLModelId" :: NullOrUndefined (EntityId) , "EvaluationDataSourceId" :: NullOrUndefined (EntityId) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (EntityName) , "Status" :: NullOrUndefined (EntityStatus) , "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics) , "LogUri" :: NullOrUndefined (PresignedS3Url) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) } ) -> GetEvaluationOutput
newGetEvaluationOutput'  customize = (GetEvaluationOutput <<< customize) { "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "EvaluationDataSourceId": (NullOrUndefined Nothing), "EvaluationId": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PerformanceMetrics": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype GetMLModelInput = GetMLModelInput 
  { "MLModelId" :: (EntityId)
  , "Verbose" :: NullOrUndefined (Verbose)
  }
derive instance newtypeGetMLModelInput :: Newtype GetMLModelInput _
derive instance repGenericGetMLModelInput :: Generic GetMLModelInput _
instance showGetMLModelInput :: Show GetMLModelInput where show = genericShow
instance decodeGetMLModelInput :: Decode GetMLModelInput where decode = genericDecode options
instance encodeGetMLModelInput :: Encode GetMLModelInput where encode = genericEncode options

-- | Constructs GetMLModelInput from required parameters
newGetMLModelInput :: EntityId -> GetMLModelInput
newGetMLModelInput _MLModelId = GetMLModelInput { "MLModelId": _MLModelId, "Verbose": (NullOrUndefined Nothing) }

-- | Constructs GetMLModelInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMLModelInput' :: EntityId -> ( { "MLModelId" :: (EntityId) , "Verbose" :: NullOrUndefined (Verbose) } -> {"MLModelId" :: (EntityId) , "Verbose" :: NullOrUndefined (Verbose) } ) -> GetMLModelInput
newGetMLModelInput' _MLModelId customize = (GetMLModelInput <<< customize) { "MLModelId": _MLModelId, "Verbose": (NullOrUndefined Nothing) }



-- | <p>Represents the output of a <code>GetMLModel</code> operation, and provides detailed information about a <code>MLModel</code>.</p>
newtype GetMLModelOutput = GetMLModelOutput 
  { "MLModelId" :: NullOrUndefined (EntityId)
  , "TrainingDataSourceId" :: NullOrUndefined (EntityId)
  , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "LastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "Name" :: NullOrUndefined (MLModelName)
  , "Status" :: NullOrUndefined (EntityStatus)
  , "SizeInBytes" :: NullOrUndefined (LongType)
  , "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo)
  , "TrainingParameters" :: NullOrUndefined (TrainingParameters)
  , "InputDataLocationS3" :: NullOrUndefined (S3Url)
  , "MLModelType" :: NullOrUndefined (MLModelType)
  , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold)
  , "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "LogUri" :: NullOrUndefined (PresignedS3Url)
  , "Message" :: NullOrUndefined (Message)
  , "ComputeTime" :: NullOrUndefined (LongType)
  , "FinishedAt" :: NullOrUndefined (EpochTime)
  , "StartedAt" :: NullOrUndefined (EpochTime)
  , "Recipe" :: NullOrUndefined (Recipe)
  , "Schema" :: NullOrUndefined (DataSchema)
  }
derive instance newtypeGetMLModelOutput :: Newtype GetMLModelOutput _
derive instance repGenericGetMLModelOutput :: Generic GetMLModelOutput _
instance showGetMLModelOutput :: Show GetMLModelOutput where show = genericShow
instance decodeGetMLModelOutput :: Decode GetMLModelOutput where decode = genericDecode options
instance encodeGetMLModelOutput :: Encode GetMLModelOutput where encode = genericEncode options

-- | Constructs GetMLModelOutput from required parameters
newGetMLModelOutput :: GetMLModelOutput
newGetMLModelOutput  = GetMLModelOutput { "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "EndpointInfo": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "MLModelType": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Recipe": (NullOrUndefined Nothing), "Schema": (NullOrUndefined Nothing), "ScoreThreshold": (NullOrUndefined Nothing), "ScoreThresholdLastUpdatedAt": (NullOrUndefined Nothing), "SizeInBytes": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TrainingDataSourceId": (NullOrUndefined Nothing), "TrainingParameters": (NullOrUndefined Nothing) }

-- | Constructs GetMLModelOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMLModelOutput' :: ( { "MLModelId" :: NullOrUndefined (EntityId) , "TrainingDataSourceId" :: NullOrUndefined (EntityId) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (MLModelName) , "Status" :: NullOrUndefined (EntityStatus) , "SizeInBytes" :: NullOrUndefined (LongType) , "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) , "TrainingParameters" :: NullOrUndefined (TrainingParameters) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "MLModelType" :: NullOrUndefined (MLModelType) , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) , "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime) , "LogUri" :: NullOrUndefined (PresignedS3Url) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) , "Recipe" :: NullOrUndefined (Recipe) , "Schema" :: NullOrUndefined (DataSchema) } -> {"MLModelId" :: NullOrUndefined (EntityId) , "TrainingDataSourceId" :: NullOrUndefined (EntityId) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (MLModelName) , "Status" :: NullOrUndefined (EntityStatus) , "SizeInBytes" :: NullOrUndefined (LongType) , "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) , "TrainingParameters" :: NullOrUndefined (TrainingParameters) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "MLModelType" :: NullOrUndefined (MLModelType) , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) , "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime) , "LogUri" :: NullOrUndefined (PresignedS3Url) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) , "Recipe" :: NullOrUndefined (Recipe) , "Schema" :: NullOrUndefined (DataSchema) } ) -> GetMLModelOutput
newGetMLModelOutput'  customize = (GetMLModelOutput <<< customize) { "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "EndpointInfo": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "MLModelType": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Recipe": (NullOrUndefined Nothing), "Schema": (NullOrUndefined Nothing), "ScoreThreshold": (NullOrUndefined Nothing), "ScoreThresholdLastUpdatedAt": (NullOrUndefined Nothing), "SizeInBytes": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TrainingDataSourceId": (NullOrUndefined Nothing), "TrainingParameters": (NullOrUndefined Nothing) }



-- | <p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>
newtype IdempotentParameterMismatchException = IdempotentParameterMismatchException 
  { "message" :: NullOrUndefined (ErrorMessage)
  , "code" :: NullOrUndefined (ErrorCode)
  }
derive instance newtypeIdempotentParameterMismatchException :: Newtype IdempotentParameterMismatchException _
derive instance repGenericIdempotentParameterMismatchException :: Generic IdempotentParameterMismatchException _
instance showIdempotentParameterMismatchException :: Show IdempotentParameterMismatchException where show = genericShow
instance decodeIdempotentParameterMismatchException :: Decode IdempotentParameterMismatchException where decode = genericDecode options
instance encodeIdempotentParameterMismatchException :: Encode IdempotentParameterMismatchException where encode = genericEncode options

-- | Constructs IdempotentParameterMismatchException from required parameters
newIdempotentParameterMismatchException :: IdempotentParameterMismatchException
newIdempotentParameterMismatchException  = IdempotentParameterMismatchException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs IdempotentParameterMismatchException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdempotentParameterMismatchException' :: ( { "message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } -> {"message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } ) -> IdempotentParameterMismatchException
newIdempotentParameterMismatchException'  customize = (IdempotentParameterMismatchException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



-- | <p>Integer type that is a 32-bit signed number.</p>
newtype IntegerType = IntegerType Int
derive instance newtypeIntegerType :: Newtype IntegerType _
derive instance repGenericIntegerType :: Generic IntegerType _
instance showIntegerType :: Show IntegerType where show = genericShow
instance decodeIntegerType :: Decode IntegerType where decode = genericDecode options
instance encodeIntegerType :: Encode IntegerType where encode = genericEncode options



-- | <p>An error on the server occurred when trying to process a request.</p>
newtype InternalServerException = InternalServerException 
  { "message" :: NullOrUndefined (ErrorMessage)
  , "code" :: NullOrUndefined (ErrorCode)
  }
derive instance newtypeInternalServerException :: Newtype InternalServerException _
derive instance repGenericInternalServerException :: Generic InternalServerException _
instance showInternalServerException :: Show InternalServerException where show = genericShow
instance decodeInternalServerException :: Decode InternalServerException where decode = genericDecode options
instance encodeInternalServerException :: Encode InternalServerException where encode = genericEncode options

-- | Constructs InternalServerException from required parameters
newInternalServerException :: InternalServerException
newInternalServerException  = InternalServerException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerException' :: ( { "message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } -> {"message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } ) -> InternalServerException
newInternalServerException'  customize = (InternalServerException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



-- | <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
newtype InvalidInputException = InvalidInputException 
  { "message" :: NullOrUndefined (ErrorMessage)
  , "code" :: NullOrUndefined (ErrorCode)
  }
derive instance newtypeInvalidInputException :: Newtype InvalidInputException _
derive instance repGenericInvalidInputException :: Generic InvalidInputException _
instance showInvalidInputException :: Show InvalidInputException where show = genericShow
instance decodeInvalidInputException :: Decode InvalidInputException where decode = genericDecode options
instance encodeInvalidInputException :: Encode InvalidInputException where encode = genericEncode options

-- | Constructs InvalidInputException from required parameters
newInvalidInputException :: InvalidInputException
newInvalidInputException  = InvalidInputException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidInputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputException' :: ( { "message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } -> {"message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } ) -> InvalidInputException
newInvalidInputException'  customize = (InvalidInputException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



newtype InvalidTagException = InvalidTagException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidTagException :: Newtype InvalidTagException _
derive instance repGenericInvalidTagException :: Generic InvalidTagException _
instance showInvalidTagException :: Show InvalidTagException where show = genericShow
instance decodeInvalidTagException :: Decode InvalidTagException where decode = genericDecode options
instance encodeInvalidTagException :: Encode InvalidTagException where encode = genericEncode options

-- | Constructs InvalidTagException from required parameters
newInvalidTagException :: InvalidTagException
newInvalidTagException  = InvalidTagException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidTagException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidTagException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidTagException
newInvalidTagException'  customize = (InvalidTagException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Label = Label String
derive instance newtypeLabel :: Newtype Label _
derive instance repGenericLabel :: Generic Label _
instance showLabel :: Show Label where show = genericShow
instance decodeLabel :: Decode Label where decode = genericDecode options
instance encodeLabel :: Encode Label where encode = genericEncode options



-- | <p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: NullOrUndefined (ErrorMessage)
  , "code" :: NullOrUndefined (ErrorCode)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } -> {"message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



-- | <p>Long integer type that is a 64-bit signed number.</p>
newtype LongType = LongType Number
derive instance newtypeLongType :: Newtype LongType _
derive instance repGenericLongType :: Generic LongType _
instance showLongType :: Show LongType where show = genericShow
instance decodeLongType :: Decode LongType where decode = genericDecode options
instance encodeLongType :: Encode LongType where encode = genericEncode options



-- | <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
newtype MLModel = MLModel 
  { "MLModelId" :: NullOrUndefined (EntityId)
  , "TrainingDataSourceId" :: NullOrUndefined (EntityId)
  , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "LastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "Name" :: NullOrUndefined (MLModelName)
  , "Status" :: NullOrUndefined (EntityStatus)
  , "SizeInBytes" :: NullOrUndefined (LongType)
  , "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo)
  , "TrainingParameters" :: NullOrUndefined (TrainingParameters)
  , "InputDataLocationS3" :: NullOrUndefined (S3Url)
  , "Algorithm" :: NullOrUndefined (Algorithm)
  , "MLModelType" :: NullOrUndefined (MLModelType)
  , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold)
  , "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime)
  , "Message" :: NullOrUndefined (Message)
  , "ComputeTime" :: NullOrUndefined (LongType)
  , "FinishedAt" :: NullOrUndefined (EpochTime)
  , "StartedAt" :: NullOrUndefined (EpochTime)
  }
derive instance newtypeMLModel :: Newtype MLModel _
derive instance repGenericMLModel :: Generic MLModel _
instance showMLModel :: Show MLModel where show = genericShow
instance decodeMLModel :: Decode MLModel where decode = genericDecode options
instance encodeMLModel :: Encode MLModel where encode = genericEncode options

-- | Constructs MLModel from required parameters
newMLModel :: MLModel
newMLModel  = MLModel { "Algorithm": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "EndpointInfo": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "MLModelType": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ScoreThreshold": (NullOrUndefined Nothing), "ScoreThresholdLastUpdatedAt": (NullOrUndefined Nothing), "SizeInBytes": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TrainingDataSourceId": (NullOrUndefined Nothing), "TrainingParameters": (NullOrUndefined Nothing) }

-- | Constructs MLModel's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMLModel' :: ( { "MLModelId" :: NullOrUndefined (EntityId) , "TrainingDataSourceId" :: NullOrUndefined (EntityId) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (MLModelName) , "Status" :: NullOrUndefined (EntityStatus) , "SizeInBytes" :: NullOrUndefined (LongType) , "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) , "TrainingParameters" :: NullOrUndefined (TrainingParameters) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "Algorithm" :: NullOrUndefined (Algorithm) , "MLModelType" :: NullOrUndefined (MLModelType) , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) , "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) } -> {"MLModelId" :: NullOrUndefined (EntityId) , "TrainingDataSourceId" :: NullOrUndefined (EntityId) , "CreatedByIamUser" :: NullOrUndefined (AwsUserArn) , "CreatedAt" :: NullOrUndefined (EpochTime) , "LastUpdatedAt" :: NullOrUndefined (EpochTime) , "Name" :: NullOrUndefined (MLModelName) , "Status" :: NullOrUndefined (EntityStatus) , "SizeInBytes" :: NullOrUndefined (LongType) , "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) , "TrainingParameters" :: NullOrUndefined (TrainingParameters) , "InputDataLocationS3" :: NullOrUndefined (S3Url) , "Algorithm" :: NullOrUndefined (Algorithm) , "MLModelType" :: NullOrUndefined (MLModelType) , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) , "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime) , "Message" :: NullOrUndefined (Message) , "ComputeTime" :: NullOrUndefined (LongType) , "FinishedAt" :: NullOrUndefined (EpochTime) , "StartedAt" :: NullOrUndefined (EpochTime) } ) -> MLModel
newMLModel'  customize = (MLModel <<< customize) { "Algorithm": (NullOrUndefined Nothing), "ComputeTime": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CreatedByIamUser": (NullOrUndefined Nothing), "EndpointInfo": (NullOrUndefined Nothing), "FinishedAt": (NullOrUndefined Nothing), "InputDataLocationS3": (NullOrUndefined Nothing), "LastUpdatedAt": (NullOrUndefined Nothing), "MLModelId": (NullOrUndefined Nothing), "MLModelType": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ScoreThreshold": (NullOrUndefined Nothing), "ScoreThresholdLastUpdatedAt": (NullOrUndefined Nothing), "SizeInBytes": (NullOrUndefined Nothing), "StartedAt": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TrainingDataSourceId": (NullOrUndefined Nothing), "TrainingParameters": (NullOrUndefined Nothing) }



newtype MLModelFilterVariable = MLModelFilterVariable String
derive instance newtypeMLModelFilterVariable :: Newtype MLModelFilterVariable _
derive instance repGenericMLModelFilterVariable :: Generic MLModelFilterVariable _
instance showMLModelFilterVariable :: Show MLModelFilterVariable where show = genericShow
instance decodeMLModelFilterVariable :: Decode MLModelFilterVariable where decode = genericDecode options
instance encodeMLModelFilterVariable :: Encode MLModelFilterVariable where encode = genericEncode options



newtype MLModelName = MLModelName String
derive instance newtypeMLModelName :: Newtype MLModelName _
derive instance repGenericMLModelName :: Generic MLModelName _
instance showMLModelName :: Show MLModelName where show = genericShow
instance decodeMLModelName :: Decode MLModelName where decode = genericDecode options
instance encodeMLModelName :: Encode MLModelName where encode = genericEncode options



newtype MLModelType = MLModelType String
derive instance newtypeMLModelType :: Newtype MLModelType _
derive instance repGenericMLModelType :: Generic MLModelType _
instance showMLModelType :: Show MLModelType where show = genericShow
instance decodeMLModelType :: Decode MLModelType where decode = genericDecode options
instance encodeMLModelType :: Encode MLModelType where encode = genericEncode options



newtype MLModels = MLModels (Array MLModel)
derive instance newtypeMLModels :: Newtype MLModels _
derive instance repGenericMLModels :: Generic MLModels _
instance showMLModels :: Show MLModels where show = genericShow
instance decodeMLModels :: Decode MLModels where decode = genericDecode options
instance encodeMLModels :: Encode MLModels where encode = genericEncode options



-- | <p> Description of the most recent details about an object.</p>
newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options



newtype PageLimit = PageLimit Int
derive instance newtypePageLimit :: Newtype PageLimit _
derive instance repGenericPageLimit :: Generic PageLimit _
instance showPageLimit :: Show PageLimit where show = genericShow
instance decodePageLimit :: Decode PageLimit where decode = genericDecode options
instance encodePageLimit :: Encode PageLimit where encode = genericEncode options



-- | <p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
newtype PerformanceMetrics = PerformanceMetrics 
  { "Properties" :: NullOrUndefined (PerformanceMetricsProperties)
  }
derive instance newtypePerformanceMetrics :: Newtype PerformanceMetrics _
derive instance repGenericPerformanceMetrics :: Generic PerformanceMetrics _
instance showPerformanceMetrics :: Show PerformanceMetrics where show = genericShow
instance decodePerformanceMetrics :: Decode PerformanceMetrics where decode = genericDecode options
instance encodePerformanceMetrics :: Encode PerformanceMetrics where encode = genericEncode options

-- | Constructs PerformanceMetrics from required parameters
newPerformanceMetrics :: PerformanceMetrics
newPerformanceMetrics  = PerformanceMetrics { "Properties": (NullOrUndefined Nothing) }

-- | Constructs PerformanceMetrics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPerformanceMetrics' :: ( { "Properties" :: NullOrUndefined (PerformanceMetricsProperties) } -> {"Properties" :: NullOrUndefined (PerformanceMetricsProperties) } ) -> PerformanceMetrics
newPerformanceMetrics'  customize = (PerformanceMetrics <<< customize) { "Properties": (NullOrUndefined Nothing) }



newtype PerformanceMetricsProperties = PerformanceMetricsProperties (StrMap.StrMap PerformanceMetricsPropertyValue)
derive instance newtypePerformanceMetricsProperties :: Newtype PerformanceMetricsProperties _
derive instance repGenericPerformanceMetricsProperties :: Generic PerformanceMetricsProperties _
instance showPerformanceMetricsProperties :: Show PerformanceMetricsProperties where show = genericShow
instance decodePerformanceMetricsProperties :: Decode PerformanceMetricsProperties where decode = genericDecode options
instance encodePerformanceMetricsProperties :: Encode PerformanceMetricsProperties where encode = genericEncode options



newtype PerformanceMetricsPropertyKey = PerformanceMetricsPropertyKey String
derive instance newtypePerformanceMetricsPropertyKey :: Newtype PerformanceMetricsPropertyKey _
derive instance repGenericPerformanceMetricsPropertyKey :: Generic PerformanceMetricsPropertyKey _
instance showPerformanceMetricsPropertyKey :: Show PerformanceMetricsPropertyKey where show = genericShow
instance decodePerformanceMetricsPropertyKey :: Decode PerformanceMetricsPropertyKey where decode = genericDecode options
instance encodePerformanceMetricsPropertyKey :: Encode PerformanceMetricsPropertyKey where encode = genericEncode options



newtype PerformanceMetricsPropertyValue = PerformanceMetricsPropertyValue String
derive instance newtypePerformanceMetricsPropertyValue :: Newtype PerformanceMetricsPropertyValue _
derive instance repGenericPerformanceMetricsPropertyValue :: Generic PerformanceMetricsPropertyValue _
instance showPerformanceMetricsPropertyValue :: Show PerformanceMetricsPropertyValue where show = genericShow
instance decodePerformanceMetricsPropertyValue :: Decode PerformanceMetricsPropertyValue where decode = genericDecode options
instance encodePerformanceMetricsPropertyValue :: Encode PerformanceMetricsPropertyValue where encode = genericEncode options



newtype PredictInput = PredictInput 
  { "MLModelId" :: (EntityId)
  , "Record" :: (Record'')
  , "PredictEndpoint" :: (VipURL)
  }
derive instance newtypePredictInput :: Newtype PredictInput _
derive instance repGenericPredictInput :: Generic PredictInput _
instance showPredictInput :: Show PredictInput where show = genericShow
instance decodePredictInput :: Decode PredictInput where decode = genericDecode options
instance encodePredictInput :: Encode PredictInput where encode = genericEncode options

-- | Constructs PredictInput from required parameters
newPredictInput :: EntityId -> VipURL -> Record'' -> PredictInput
newPredictInput _MLModelId _PredictEndpoint _Record = PredictInput { "MLModelId": _MLModelId, "PredictEndpoint": _PredictEndpoint, "Record": _Record }

-- | Constructs PredictInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPredictInput' :: EntityId -> VipURL -> Record'' -> ( { "MLModelId" :: (EntityId) , "Record" :: (Record'') , "PredictEndpoint" :: (VipURL) } -> {"MLModelId" :: (EntityId) , "Record" :: (Record'') , "PredictEndpoint" :: (VipURL) } ) -> PredictInput
newPredictInput' _MLModelId _PredictEndpoint _Record customize = (PredictInput <<< customize) { "MLModelId": _MLModelId, "PredictEndpoint": _PredictEndpoint, "Record": _Record }



newtype PredictOutput = PredictOutput 
  { "Prediction" :: NullOrUndefined (Prediction)
  }
derive instance newtypePredictOutput :: Newtype PredictOutput _
derive instance repGenericPredictOutput :: Generic PredictOutput _
instance showPredictOutput :: Show PredictOutput where show = genericShow
instance decodePredictOutput :: Decode PredictOutput where decode = genericDecode options
instance encodePredictOutput :: Encode PredictOutput where encode = genericEncode options

-- | Constructs PredictOutput from required parameters
newPredictOutput :: PredictOutput
newPredictOutput  = PredictOutput { "Prediction": (NullOrUndefined Nothing) }

-- | Constructs PredictOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPredictOutput' :: ( { "Prediction" :: NullOrUndefined (Prediction) } -> {"Prediction" :: NullOrUndefined (Prediction) } ) -> PredictOutput
newPredictOutput'  customize = (PredictOutput <<< customize) { "Prediction": (NullOrUndefined Nothing) }



-- | <p>The output from a <code>Predict</code> operation: </p> <ul> <li> <p> <code>Details</code> - Contains the following attributes: <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code> <code>DetailsAttributes.ALGORITHM - SGD</code> </p> </li> <li> <p> <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code> request. </p> </li> <li> <p> <code>PredictedScores</code> - Contains the raw classification score corresponding to each label. </p> </li> <li> <p> <code>PredictedValue</code> - Present for a <code>REGRESSION</code> <code>MLModel</code> request. </p> </li> </ul>
newtype Prediction = Prediction 
  { "predictedLabel" :: NullOrUndefined (Label)
  , "predictedValue" :: NullOrUndefined (FloatLabel')
  , "predictedScores" :: NullOrUndefined (ScoreValuePerLabelMap)
  , "details" :: NullOrUndefined (DetailsMap)
  }
derive instance newtypePrediction :: Newtype Prediction _
derive instance repGenericPrediction :: Generic Prediction _
instance showPrediction :: Show Prediction where show = genericShow
instance decodePrediction :: Decode Prediction where decode = genericDecode options
instance encodePrediction :: Encode Prediction where encode = genericEncode options

-- | Constructs Prediction from required parameters
newPrediction :: Prediction
newPrediction  = Prediction { "details": (NullOrUndefined Nothing), "predictedLabel": (NullOrUndefined Nothing), "predictedScores": (NullOrUndefined Nothing), "predictedValue": (NullOrUndefined Nothing) }

-- | Constructs Prediction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPrediction' :: ( { "predictedLabel" :: NullOrUndefined (Label) , "predictedValue" :: NullOrUndefined (FloatLabel') , "predictedScores" :: NullOrUndefined (ScoreValuePerLabelMap) , "details" :: NullOrUndefined (DetailsMap) } -> {"predictedLabel" :: NullOrUndefined (Label) , "predictedValue" :: NullOrUndefined (FloatLabel') , "predictedScores" :: NullOrUndefined (ScoreValuePerLabelMap) , "details" :: NullOrUndefined (DetailsMap) } ) -> Prediction
newPrediction'  customize = (Prediction <<< customize) { "details": (NullOrUndefined Nothing), "predictedLabel": (NullOrUndefined Nothing), "predictedScores": (NullOrUndefined Nothing), "predictedValue": (NullOrUndefined Nothing) }



-- | <p>The exception is thrown when a predict request is made to an unmounted <code>MLModel</code>.</p>
newtype PredictorNotMountedException = PredictorNotMountedException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypePredictorNotMountedException :: Newtype PredictorNotMountedException _
derive instance repGenericPredictorNotMountedException :: Generic PredictorNotMountedException _
instance showPredictorNotMountedException :: Show PredictorNotMountedException where show = genericShow
instance decodePredictorNotMountedException :: Decode PredictorNotMountedException where decode = genericDecode options
instance encodePredictorNotMountedException :: Encode PredictorNotMountedException where encode = genericEncode options

-- | Constructs PredictorNotMountedException from required parameters
newPredictorNotMountedException :: PredictorNotMountedException
newPredictorNotMountedException  = PredictorNotMountedException { "message": (NullOrUndefined Nothing) }

-- | Constructs PredictorNotMountedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPredictorNotMountedException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> PredictorNotMountedException
newPredictorNotMountedException'  customize = (PredictorNotMountedException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype PresignedS3Url = PresignedS3Url String
derive instance newtypePresignedS3Url :: Newtype PresignedS3Url _
derive instance repGenericPresignedS3Url :: Generic PresignedS3Url _
instance showPresignedS3Url :: Show PresignedS3Url where show = genericShow
instance decodePresignedS3Url :: Decode PresignedS3Url where decode = genericDecode options
instance encodePresignedS3Url :: Encode PresignedS3Url where encode = genericEncode options



-- | <p>The data specification of an Amazon Relational Database Service (Amazon RDS) <code>DataSource</code>.</p>
newtype RDSDataSpec = RDSDataSpec 
  { "DatabaseInformation" :: (RDSDatabase)
  , "SelectSqlQuery" :: (RDSSelectSqlQuery)
  , "DatabaseCredentials" :: (RDSDatabaseCredentials)
  , "S3StagingLocation" :: (S3Url)
  , "DataRearrangement" :: NullOrUndefined (DataRearrangement)
  , "DataSchema" :: NullOrUndefined (DataSchema)
  , "DataSchemaUri" :: NullOrUndefined (S3Url)
  , "ResourceRole" :: (EDPResourceRole)
  , "ServiceRole" :: (EDPServiceRole)
  , "SubnetId" :: (EDPSubnetId)
  , "SecurityGroupIds" :: (EDPSecurityGroupIds)
  }
derive instance newtypeRDSDataSpec :: Newtype RDSDataSpec _
derive instance repGenericRDSDataSpec :: Generic RDSDataSpec _
instance showRDSDataSpec :: Show RDSDataSpec where show = genericShow
instance decodeRDSDataSpec :: Decode RDSDataSpec where decode = genericDecode options
instance encodeRDSDataSpec :: Encode RDSDataSpec where encode = genericEncode options

-- | Constructs RDSDataSpec from required parameters
newRDSDataSpec :: RDSDatabaseCredentials -> RDSDatabase -> EDPResourceRole -> S3Url -> EDPSecurityGroupIds -> RDSSelectSqlQuery -> EDPServiceRole -> EDPSubnetId -> RDSDataSpec
newRDSDataSpec _DatabaseCredentials _DatabaseInformation _ResourceRole _S3StagingLocation _SecurityGroupIds _SelectSqlQuery _ServiceRole _SubnetId = RDSDataSpec { "DatabaseCredentials": _DatabaseCredentials, "DatabaseInformation": _DatabaseInformation, "ResourceRole": _ResourceRole, "S3StagingLocation": _S3StagingLocation, "SecurityGroupIds": _SecurityGroupIds, "SelectSqlQuery": _SelectSqlQuery, "ServiceRole": _ServiceRole, "SubnetId": _SubnetId, "DataRearrangement": (NullOrUndefined Nothing), "DataSchema": (NullOrUndefined Nothing), "DataSchemaUri": (NullOrUndefined Nothing) }

-- | Constructs RDSDataSpec's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRDSDataSpec' :: RDSDatabaseCredentials -> RDSDatabase -> EDPResourceRole -> S3Url -> EDPSecurityGroupIds -> RDSSelectSqlQuery -> EDPServiceRole -> EDPSubnetId -> ( { "DatabaseInformation" :: (RDSDatabase) , "SelectSqlQuery" :: (RDSSelectSqlQuery) , "DatabaseCredentials" :: (RDSDatabaseCredentials) , "S3StagingLocation" :: (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "DataSchema" :: NullOrUndefined (DataSchema) , "DataSchemaUri" :: NullOrUndefined (S3Url) , "ResourceRole" :: (EDPResourceRole) , "ServiceRole" :: (EDPServiceRole) , "SubnetId" :: (EDPSubnetId) , "SecurityGroupIds" :: (EDPSecurityGroupIds) } -> {"DatabaseInformation" :: (RDSDatabase) , "SelectSqlQuery" :: (RDSSelectSqlQuery) , "DatabaseCredentials" :: (RDSDatabaseCredentials) , "S3StagingLocation" :: (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "DataSchema" :: NullOrUndefined (DataSchema) , "DataSchemaUri" :: NullOrUndefined (S3Url) , "ResourceRole" :: (EDPResourceRole) , "ServiceRole" :: (EDPServiceRole) , "SubnetId" :: (EDPSubnetId) , "SecurityGroupIds" :: (EDPSecurityGroupIds) } ) -> RDSDataSpec
newRDSDataSpec' _DatabaseCredentials _DatabaseInformation _ResourceRole _S3StagingLocation _SecurityGroupIds _SelectSqlQuery _ServiceRole _SubnetId customize = (RDSDataSpec <<< customize) { "DatabaseCredentials": _DatabaseCredentials, "DatabaseInformation": _DatabaseInformation, "ResourceRole": _ResourceRole, "S3StagingLocation": _S3StagingLocation, "SecurityGroupIds": _SecurityGroupIds, "SelectSqlQuery": _SelectSqlQuery, "ServiceRole": _ServiceRole, "SubnetId": _SubnetId, "DataRearrangement": (NullOrUndefined Nothing), "DataSchema": (NullOrUndefined Nothing), "DataSchemaUri": (NullOrUndefined Nothing) }



-- | <p>The database details of an Amazon RDS database.</p>
newtype RDSDatabase = RDSDatabase 
  { "InstanceIdentifier" :: (RDSInstanceIdentifier)
  , "DatabaseName" :: (RDSDatabaseName)
  }
derive instance newtypeRDSDatabase :: Newtype RDSDatabase _
derive instance repGenericRDSDatabase :: Generic RDSDatabase _
instance showRDSDatabase :: Show RDSDatabase where show = genericShow
instance decodeRDSDatabase :: Decode RDSDatabase where decode = genericDecode options
instance encodeRDSDatabase :: Encode RDSDatabase where encode = genericEncode options

-- | Constructs RDSDatabase from required parameters
newRDSDatabase :: RDSDatabaseName -> RDSInstanceIdentifier -> RDSDatabase
newRDSDatabase _DatabaseName _InstanceIdentifier = RDSDatabase { "DatabaseName": _DatabaseName, "InstanceIdentifier": _InstanceIdentifier }

-- | Constructs RDSDatabase's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRDSDatabase' :: RDSDatabaseName -> RDSInstanceIdentifier -> ( { "InstanceIdentifier" :: (RDSInstanceIdentifier) , "DatabaseName" :: (RDSDatabaseName) } -> {"InstanceIdentifier" :: (RDSInstanceIdentifier) , "DatabaseName" :: (RDSDatabaseName) } ) -> RDSDatabase
newRDSDatabase' _DatabaseName _InstanceIdentifier customize = (RDSDatabase <<< customize) { "DatabaseName": _DatabaseName, "InstanceIdentifier": _InstanceIdentifier }



-- | <p>The database credentials to connect to a database on an RDS DB instance.</p>
newtype RDSDatabaseCredentials = RDSDatabaseCredentials 
  { "Username" :: (RDSDatabaseUsername)
  , "Password" :: (RDSDatabasePassword)
  }
derive instance newtypeRDSDatabaseCredentials :: Newtype RDSDatabaseCredentials _
derive instance repGenericRDSDatabaseCredentials :: Generic RDSDatabaseCredentials _
instance showRDSDatabaseCredentials :: Show RDSDatabaseCredentials where show = genericShow
instance decodeRDSDatabaseCredentials :: Decode RDSDatabaseCredentials where decode = genericDecode options
instance encodeRDSDatabaseCredentials :: Encode RDSDatabaseCredentials where encode = genericEncode options

-- | Constructs RDSDatabaseCredentials from required parameters
newRDSDatabaseCredentials :: RDSDatabasePassword -> RDSDatabaseUsername -> RDSDatabaseCredentials
newRDSDatabaseCredentials _Password _Username = RDSDatabaseCredentials { "Password": _Password, "Username": _Username }

-- | Constructs RDSDatabaseCredentials's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRDSDatabaseCredentials' :: RDSDatabasePassword -> RDSDatabaseUsername -> ( { "Username" :: (RDSDatabaseUsername) , "Password" :: (RDSDatabasePassword) } -> {"Username" :: (RDSDatabaseUsername) , "Password" :: (RDSDatabasePassword) } ) -> RDSDatabaseCredentials
newRDSDatabaseCredentials' _Password _Username customize = (RDSDatabaseCredentials <<< customize) { "Password": _Password, "Username": _Username }



-- | <p>The name of a database hosted on an RDS DB instance.</p>
newtype RDSDatabaseName = RDSDatabaseName String
derive instance newtypeRDSDatabaseName :: Newtype RDSDatabaseName _
derive instance repGenericRDSDatabaseName :: Generic RDSDatabaseName _
instance showRDSDatabaseName :: Show RDSDatabaseName where show = genericShow
instance decodeRDSDatabaseName :: Decode RDSDatabaseName where decode = genericDecode options
instance encodeRDSDatabaseName :: Encode RDSDatabaseName where encode = genericEncode options



-- | <p>The password to be used by Amazon ML to connect to a database on an RDS DB instance. The password should have sufficient permissions to execute the <code>RDSSelectQuery</code> query.</p>
newtype RDSDatabasePassword = RDSDatabasePassword String
derive instance newtypeRDSDatabasePassword :: Newtype RDSDatabasePassword _
derive instance repGenericRDSDatabasePassword :: Generic RDSDatabasePassword _
instance showRDSDatabasePassword :: Show RDSDatabasePassword where show = genericShow
instance decodeRDSDatabasePassword :: Decode RDSDatabasePassword where decode = genericDecode options
instance encodeRDSDatabasePassword :: Encode RDSDatabasePassword where encode = genericEncode options



-- | <p>The username to be used by Amazon ML to connect to database on an Amazon RDS instance. The username should have sufficient permissions to execute an <code>RDSSelectSqlQuery</code> query.</p>
newtype RDSDatabaseUsername = RDSDatabaseUsername String
derive instance newtypeRDSDatabaseUsername :: Newtype RDSDatabaseUsername _
derive instance repGenericRDSDatabaseUsername :: Generic RDSDatabaseUsername _
instance showRDSDatabaseUsername :: Show RDSDatabaseUsername where show = genericShow
instance decodeRDSDatabaseUsername :: Decode RDSDatabaseUsername where decode = genericDecode options
instance encodeRDSDatabaseUsername :: Encode RDSDatabaseUsername where encode = genericEncode options



-- | Identifier of RDS DB Instances.
newtype RDSInstanceIdentifier = RDSInstanceIdentifier String
derive instance newtypeRDSInstanceIdentifier :: Newtype RDSInstanceIdentifier _
derive instance repGenericRDSInstanceIdentifier :: Generic RDSInstanceIdentifier _
instance showRDSInstanceIdentifier :: Show RDSInstanceIdentifier where show = genericShow
instance decodeRDSInstanceIdentifier :: Decode RDSInstanceIdentifier where decode = genericDecode options
instance encodeRDSInstanceIdentifier :: Encode RDSInstanceIdentifier where encode = genericEncode options



-- | <p>The datasource details that are specific to Amazon RDS.</p>
newtype RDSMetadata = RDSMetadata 
  { "Database" :: NullOrUndefined (RDSDatabase)
  , "DatabaseUserName" :: NullOrUndefined (RDSDatabaseUsername)
  , "SelectSqlQuery" :: NullOrUndefined (RDSSelectSqlQuery)
  , "ResourceRole" :: NullOrUndefined (EDPResourceRole)
  , "ServiceRole" :: NullOrUndefined (EDPServiceRole)
  , "DataPipelineId" :: NullOrUndefined (EDPPipelineId)
  }
derive instance newtypeRDSMetadata :: Newtype RDSMetadata _
derive instance repGenericRDSMetadata :: Generic RDSMetadata _
instance showRDSMetadata :: Show RDSMetadata where show = genericShow
instance decodeRDSMetadata :: Decode RDSMetadata where decode = genericDecode options
instance encodeRDSMetadata :: Encode RDSMetadata where encode = genericEncode options

-- | Constructs RDSMetadata from required parameters
newRDSMetadata :: RDSMetadata
newRDSMetadata  = RDSMetadata { "DataPipelineId": (NullOrUndefined Nothing), "Database": (NullOrUndefined Nothing), "DatabaseUserName": (NullOrUndefined Nothing), "ResourceRole": (NullOrUndefined Nothing), "SelectSqlQuery": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing) }

-- | Constructs RDSMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRDSMetadata' :: ( { "Database" :: NullOrUndefined (RDSDatabase) , "DatabaseUserName" :: NullOrUndefined (RDSDatabaseUsername) , "SelectSqlQuery" :: NullOrUndefined (RDSSelectSqlQuery) , "ResourceRole" :: NullOrUndefined (EDPResourceRole) , "ServiceRole" :: NullOrUndefined (EDPServiceRole) , "DataPipelineId" :: NullOrUndefined (EDPPipelineId) } -> {"Database" :: NullOrUndefined (RDSDatabase) , "DatabaseUserName" :: NullOrUndefined (RDSDatabaseUsername) , "SelectSqlQuery" :: NullOrUndefined (RDSSelectSqlQuery) , "ResourceRole" :: NullOrUndefined (EDPResourceRole) , "ServiceRole" :: NullOrUndefined (EDPServiceRole) , "DataPipelineId" :: NullOrUndefined (EDPPipelineId) } ) -> RDSMetadata
newRDSMetadata'  customize = (RDSMetadata <<< customize) { "DataPipelineId": (NullOrUndefined Nothing), "Database": (NullOrUndefined Nothing), "DatabaseUserName": (NullOrUndefined Nothing), "ResourceRole": (NullOrUndefined Nothing), "SelectSqlQuery": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing) }



-- | <p>The SQL query to be executed against the Amazon RDS database. The SQL query should be valid for the Amazon RDS type being used. </p>
newtype RDSSelectSqlQuery = RDSSelectSqlQuery String
derive instance newtypeRDSSelectSqlQuery :: Newtype RDSSelectSqlQuery _
derive instance repGenericRDSSelectSqlQuery :: Generic RDSSelectSqlQuery _
instance showRDSSelectSqlQuery :: Show RDSSelectSqlQuery where show = genericShow
instance decodeRDSSelectSqlQuery :: Decode RDSSelectSqlQuery where decode = genericDecode options
instance encodeRDSSelectSqlQuery :: Encode RDSSelectSqlQuery where encode = genericEncode options



-- | <p> Describes the real-time endpoint information for an <code>MLModel</code>.</p>
newtype RealtimeEndpointInfo = RealtimeEndpointInfo 
  { "PeakRequestsPerSecond" :: NullOrUndefined (IntegerType)
  , "CreatedAt" :: NullOrUndefined (EpochTime)
  , "EndpointUrl" :: NullOrUndefined (VipURL)
  , "EndpointStatus" :: NullOrUndefined (RealtimeEndpointStatus)
  }
derive instance newtypeRealtimeEndpointInfo :: Newtype RealtimeEndpointInfo _
derive instance repGenericRealtimeEndpointInfo :: Generic RealtimeEndpointInfo _
instance showRealtimeEndpointInfo :: Show RealtimeEndpointInfo where show = genericShow
instance decodeRealtimeEndpointInfo :: Decode RealtimeEndpointInfo where decode = genericDecode options
instance encodeRealtimeEndpointInfo :: Encode RealtimeEndpointInfo where encode = genericEncode options

-- | Constructs RealtimeEndpointInfo from required parameters
newRealtimeEndpointInfo :: RealtimeEndpointInfo
newRealtimeEndpointInfo  = RealtimeEndpointInfo { "CreatedAt": (NullOrUndefined Nothing), "EndpointStatus": (NullOrUndefined Nothing), "EndpointUrl": (NullOrUndefined Nothing), "PeakRequestsPerSecond": (NullOrUndefined Nothing) }

-- | Constructs RealtimeEndpointInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRealtimeEndpointInfo' :: ( { "PeakRequestsPerSecond" :: NullOrUndefined (IntegerType) , "CreatedAt" :: NullOrUndefined (EpochTime) , "EndpointUrl" :: NullOrUndefined (VipURL) , "EndpointStatus" :: NullOrUndefined (RealtimeEndpointStatus) } -> {"PeakRequestsPerSecond" :: NullOrUndefined (IntegerType) , "CreatedAt" :: NullOrUndefined (EpochTime) , "EndpointUrl" :: NullOrUndefined (VipURL) , "EndpointStatus" :: NullOrUndefined (RealtimeEndpointStatus) } ) -> RealtimeEndpointInfo
newRealtimeEndpointInfo'  customize = (RealtimeEndpointInfo <<< customize) { "CreatedAt": (NullOrUndefined Nothing), "EndpointStatus": (NullOrUndefined Nothing), "EndpointUrl": (NullOrUndefined Nothing), "PeakRequestsPerSecond": (NullOrUndefined Nothing) }



newtype RealtimeEndpointStatus = RealtimeEndpointStatus String
derive instance newtypeRealtimeEndpointStatus :: Newtype RealtimeEndpointStatus _
derive instance repGenericRealtimeEndpointStatus :: Generic RealtimeEndpointStatus _
instance showRealtimeEndpointStatus :: Show RealtimeEndpointStatus where show = genericShow
instance decodeRealtimeEndpointStatus :: Decode RealtimeEndpointStatus where decode = genericDecode options
instance encodeRealtimeEndpointStatus :: Encode RealtimeEndpointStatus where encode = genericEncode options



newtype Recipe = Recipe String
derive instance newtypeRecipe :: Newtype Recipe _
derive instance repGenericRecipe :: Generic Recipe _
instance showRecipe :: Show Recipe where show = genericShow
instance decodeRecipe :: Decode Recipe where decode = genericDecode options
instance encodeRecipe :: Encode Recipe where encode = genericEncode options



-- | <p>A map of variable name-value pairs that represent an observation.</p>
newtype Record'' = Record'' (StrMap.StrMap VariableValue)
derive instance newtypeRecord'' :: Newtype Record'' _
derive instance repGenericRecord'' :: Generic Record'' _
instance showRecord'' :: Show Record'' where show = genericShow
instance decodeRecord'' :: Decode Record'' where decode = genericDecode options
instance encodeRecord'' :: Encode Record'' where encode = genericEncode options



-- | <p>The ID of an Amazon Redshift cluster.</p>
newtype RedshiftClusterIdentifier = RedshiftClusterIdentifier String
derive instance newtypeRedshiftClusterIdentifier :: Newtype RedshiftClusterIdentifier _
derive instance repGenericRedshiftClusterIdentifier :: Generic RedshiftClusterIdentifier _
instance showRedshiftClusterIdentifier :: Show RedshiftClusterIdentifier where show = genericShow
instance decodeRedshiftClusterIdentifier :: Decode RedshiftClusterIdentifier where decode = genericDecode options
instance encodeRedshiftClusterIdentifier :: Encode RedshiftClusterIdentifier where encode = genericEncode options



-- | <p>Describes the data specification of an Amazon Redshift <code>DataSource</code>.</p>
newtype RedshiftDataSpec = RedshiftDataSpec 
  { "DatabaseInformation" :: (RedshiftDatabase)
  , "SelectSqlQuery" :: (RedshiftSelectSqlQuery)
  , "DatabaseCredentials" :: (RedshiftDatabaseCredentials)
  , "S3StagingLocation" :: (S3Url)
  , "DataRearrangement" :: NullOrUndefined (DataRearrangement)
  , "DataSchema" :: NullOrUndefined (DataSchema)
  , "DataSchemaUri" :: NullOrUndefined (S3Url)
  }
derive instance newtypeRedshiftDataSpec :: Newtype RedshiftDataSpec _
derive instance repGenericRedshiftDataSpec :: Generic RedshiftDataSpec _
instance showRedshiftDataSpec :: Show RedshiftDataSpec where show = genericShow
instance decodeRedshiftDataSpec :: Decode RedshiftDataSpec where decode = genericDecode options
instance encodeRedshiftDataSpec :: Encode RedshiftDataSpec where encode = genericEncode options

-- | Constructs RedshiftDataSpec from required parameters
newRedshiftDataSpec :: RedshiftDatabaseCredentials -> RedshiftDatabase -> S3Url -> RedshiftSelectSqlQuery -> RedshiftDataSpec
newRedshiftDataSpec _DatabaseCredentials _DatabaseInformation _S3StagingLocation _SelectSqlQuery = RedshiftDataSpec { "DatabaseCredentials": _DatabaseCredentials, "DatabaseInformation": _DatabaseInformation, "S3StagingLocation": _S3StagingLocation, "SelectSqlQuery": _SelectSqlQuery, "DataRearrangement": (NullOrUndefined Nothing), "DataSchema": (NullOrUndefined Nothing), "DataSchemaUri": (NullOrUndefined Nothing) }

-- | Constructs RedshiftDataSpec's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRedshiftDataSpec' :: RedshiftDatabaseCredentials -> RedshiftDatabase -> S3Url -> RedshiftSelectSqlQuery -> ( { "DatabaseInformation" :: (RedshiftDatabase) , "SelectSqlQuery" :: (RedshiftSelectSqlQuery) , "DatabaseCredentials" :: (RedshiftDatabaseCredentials) , "S3StagingLocation" :: (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "DataSchema" :: NullOrUndefined (DataSchema) , "DataSchemaUri" :: NullOrUndefined (S3Url) } -> {"DatabaseInformation" :: (RedshiftDatabase) , "SelectSqlQuery" :: (RedshiftSelectSqlQuery) , "DatabaseCredentials" :: (RedshiftDatabaseCredentials) , "S3StagingLocation" :: (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "DataSchema" :: NullOrUndefined (DataSchema) , "DataSchemaUri" :: NullOrUndefined (S3Url) } ) -> RedshiftDataSpec
newRedshiftDataSpec' _DatabaseCredentials _DatabaseInformation _S3StagingLocation _SelectSqlQuery customize = (RedshiftDataSpec <<< customize) { "DatabaseCredentials": _DatabaseCredentials, "DatabaseInformation": _DatabaseInformation, "S3StagingLocation": _S3StagingLocation, "SelectSqlQuery": _SelectSqlQuery, "DataRearrangement": (NullOrUndefined Nothing), "DataSchema": (NullOrUndefined Nothing), "DataSchemaUri": (NullOrUndefined Nothing) }



-- | <p>Describes the database details required to connect to an Amazon Redshift database.</p>
newtype RedshiftDatabase = RedshiftDatabase 
  { "DatabaseName" :: (RedshiftDatabaseName)
  , "ClusterIdentifier" :: (RedshiftClusterIdentifier)
  }
derive instance newtypeRedshiftDatabase :: Newtype RedshiftDatabase _
derive instance repGenericRedshiftDatabase :: Generic RedshiftDatabase _
instance showRedshiftDatabase :: Show RedshiftDatabase where show = genericShow
instance decodeRedshiftDatabase :: Decode RedshiftDatabase where decode = genericDecode options
instance encodeRedshiftDatabase :: Encode RedshiftDatabase where encode = genericEncode options

-- | Constructs RedshiftDatabase from required parameters
newRedshiftDatabase :: RedshiftClusterIdentifier -> RedshiftDatabaseName -> RedshiftDatabase
newRedshiftDatabase _ClusterIdentifier _DatabaseName = RedshiftDatabase { "ClusterIdentifier": _ClusterIdentifier, "DatabaseName": _DatabaseName }

-- | Constructs RedshiftDatabase's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRedshiftDatabase' :: RedshiftClusterIdentifier -> RedshiftDatabaseName -> ( { "DatabaseName" :: (RedshiftDatabaseName) , "ClusterIdentifier" :: (RedshiftClusterIdentifier) } -> {"DatabaseName" :: (RedshiftDatabaseName) , "ClusterIdentifier" :: (RedshiftClusterIdentifier) } ) -> RedshiftDatabase
newRedshiftDatabase' _ClusterIdentifier _DatabaseName customize = (RedshiftDatabase <<< customize) { "ClusterIdentifier": _ClusterIdentifier, "DatabaseName": _DatabaseName }



-- | <p> Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>
newtype RedshiftDatabaseCredentials = RedshiftDatabaseCredentials 
  { "Username" :: (RedshiftDatabaseUsername)
  , "Password" :: (RedshiftDatabasePassword)
  }
derive instance newtypeRedshiftDatabaseCredentials :: Newtype RedshiftDatabaseCredentials _
derive instance repGenericRedshiftDatabaseCredentials :: Generic RedshiftDatabaseCredentials _
instance showRedshiftDatabaseCredentials :: Show RedshiftDatabaseCredentials where show = genericShow
instance decodeRedshiftDatabaseCredentials :: Decode RedshiftDatabaseCredentials where decode = genericDecode options
instance encodeRedshiftDatabaseCredentials :: Encode RedshiftDatabaseCredentials where encode = genericEncode options

-- | Constructs RedshiftDatabaseCredentials from required parameters
newRedshiftDatabaseCredentials :: RedshiftDatabasePassword -> RedshiftDatabaseUsername -> RedshiftDatabaseCredentials
newRedshiftDatabaseCredentials _Password _Username = RedshiftDatabaseCredentials { "Password": _Password, "Username": _Username }

-- | Constructs RedshiftDatabaseCredentials's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRedshiftDatabaseCredentials' :: RedshiftDatabasePassword -> RedshiftDatabaseUsername -> ( { "Username" :: (RedshiftDatabaseUsername) , "Password" :: (RedshiftDatabasePassword) } -> {"Username" :: (RedshiftDatabaseUsername) , "Password" :: (RedshiftDatabasePassword) } ) -> RedshiftDatabaseCredentials
newRedshiftDatabaseCredentials' _Password _Username customize = (RedshiftDatabaseCredentials <<< customize) { "Password": _Password, "Username": _Username }



-- | <p>The name of a database hosted on an Amazon Redshift cluster.</p>
newtype RedshiftDatabaseName = RedshiftDatabaseName String
derive instance newtypeRedshiftDatabaseName :: Newtype RedshiftDatabaseName _
derive instance repGenericRedshiftDatabaseName :: Generic RedshiftDatabaseName _
instance showRedshiftDatabaseName :: Show RedshiftDatabaseName where show = genericShow
instance decodeRedshiftDatabaseName :: Decode RedshiftDatabaseName where decode = genericDecode options
instance encodeRedshiftDatabaseName :: Encode RedshiftDatabaseName where encode = genericEncode options



-- | <p>A password to be used by Amazon ML to connect to a database on an Amazon Redshift cluster. The password should have sufficient permissions to execute a <code>RedshiftSelectSqlQuery</code> query. The password should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
newtype RedshiftDatabasePassword = RedshiftDatabasePassword String
derive instance newtypeRedshiftDatabasePassword :: Newtype RedshiftDatabasePassword _
derive instance repGenericRedshiftDatabasePassword :: Generic RedshiftDatabasePassword _
instance showRedshiftDatabasePassword :: Show RedshiftDatabasePassword where show = genericShow
instance decodeRedshiftDatabasePassword :: Decode RedshiftDatabasePassword where decode = genericDecode options
instance encodeRedshiftDatabasePassword :: Encode RedshiftDatabasePassword where encode = genericEncode options



-- | <p>A username to be used by Amazon Machine Learning (Amazon ML)to connect to a database on an Amazon Redshift cluster. The username should have sufficient permissions to execute the <code>RedshiftSelectSqlQuery</code> query. The username should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
newtype RedshiftDatabaseUsername = RedshiftDatabaseUsername String
derive instance newtypeRedshiftDatabaseUsername :: Newtype RedshiftDatabaseUsername _
derive instance repGenericRedshiftDatabaseUsername :: Generic RedshiftDatabaseUsername _
instance showRedshiftDatabaseUsername :: Show RedshiftDatabaseUsername where show = genericShow
instance decodeRedshiftDatabaseUsername :: Decode RedshiftDatabaseUsername where decode = genericDecode options
instance encodeRedshiftDatabaseUsername :: Encode RedshiftDatabaseUsername where encode = genericEncode options



-- | <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
newtype RedshiftMetadata = RedshiftMetadata 
  { "RedshiftDatabase" :: NullOrUndefined (RedshiftDatabase)
  , "DatabaseUserName" :: NullOrUndefined (RedshiftDatabaseUsername)
  , "SelectSqlQuery" :: NullOrUndefined (RedshiftSelectSqlQuery)
  }
derive instance newtypeRedshiftMetadata :: Newtype RedshiftMetadata _
derive instance repGenericRedshiftMetadata :: Generic RedshiftMetadata _
instance showRedshiftMetadata :: Show RedshiftMetadata where show = genericShow
instance decodeRedshiftMetadata :: Decode RedshiftMetadata where decode = genericDecode options
instance encodeRedshiftMetadata :: Encode RedshiftMetadata where encode = genericEncode options

-- | Constructs RedshiftMetadata from required parameters
newRedshiftMetadata :: RedshiftMetadata
newRedshiftMetadata  = RedshiftMetadata { "DatabaseUserName": (NullOrUndefined Nothing), "RedshiftDatabase": (NullOrUndefined Nothing), "SelectSqlQuery": (NullOrUndefined Nothing) }

-- | Constructs RedshiftMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRedshiftMetadata' :: ( { "RedshiftDatabase" :: NullOrUndefined (RedshiftDatabase) , "DatabaseUserName" :: NullOrUndefined (RedshiftDatabaseUsername) , "SelectSqlQuery" :: NullOrUndefined (RedshiftSelectSqlQuery) } -> {"RedshiftDatabase" :: NullOrUndefined (RedshiftDatabase) , "DatabaseUserName" :: NullOrUndefined (RedshiftDatabaseUsername) , "SelectSqlQuery" :: NullOrUndefined (RedshiftSelectSqlQuery) } ) -> RedshiftMetadata
newRedshiftMetadata'  customize = (RedshiftMetadata <<< customize) { "DatabaseUserName": (NullOrUndefined Nothing), "RedshiftDatabase": (NullOrUndefined Nothing), "SelectSqlQuery": (NullOrUndefined Nothing) }



-- | <p> Describes the SQL query to execute on the Amazon Redshift database. The SQL query should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_SELECT_synopsis.html">SELECT</a>. </p>
newtype RedshiftSelectSqlQuery = RedshiftSelectSqlQuery String
derive instance newtypeRedshiftSelectSqlQuery :: Newtype RedshiftSelectSqlQuery _
derive instance repGenericRedshiftSelectSqlQuery :: Generic RedshiftSelectSqlQuery _
instance showRedshiftSelectSqlQuery :: Show RedshiftSelectSqlQuery where show = genericShow
instance decodeRedshiftSelectSqlQuery :: Decode RedshiftSelectSqlQuery where decode = genericDecode options
instance encodeRedshiftSelectSqlQuery :: Encode RedshiftSelectSqlQuery where encode = genericEncode options



-- | <p>A specified resource cannot be located.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: NullOrUndefined (ErrorMessage)
  , "code" :: NullOrUndefined (ErrorCode)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } -> {"message" :: NullOrUndefined (ErrorMessage) , "code" :: NullOrUndefined (ErrorCode) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



-- | <p>The Amazon Resource Name (ARN) of an <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts">AWS IAM Role</a>, such as the following: arn:aws:iam::account:role/rolename. </p>
newtype RoleARN = RoleARN String
derive instance newtypeRoleARN :: Newtype RoleARN _
derive instance repGenericRoleARN :: Generic RoleARN _
instance showRoleARN :: Show RoleARN where show = genericShow
instance decodeRoleARN :: Decode RoleARN where decode = genericDecode options
instance encodeRoleARN :: Encode RoleARN where encode = genericEncode options



-- | <p> Describes the data specification of a <code>DataSource</code>.</p>
newtype S3DataSpec = S3DataSpec 
  { "DataLocationS3" :: (S3Url)
  , "DataRearrangement" :: NullOrUndefined (DataRearrangement)
  , "DataSchema" :: NullOrUndefined (DataSchema)
  , "DataSchemaLocationS3" :: NullOrUndefined (S3Url)
  }
derive instance newtypeS3DataSpec :: Newtype S3DataSpec _
derive instance repGenericS3DataSpec :: Generic S3DataSpec _
instance showS3DataSpec :: Show S3DataSpec where show = genericShow
instance decodeS3DataSpec :: Decode S3DataSpec where decode = genericDecode options
instance encodeS3DataSpec :: Encode S3DataSpec where encode = genericEncode options

-- | Constructs S3DataSpec from required parameters
newS3DataSpec :: S3Url -> S3DataSpec
newS3DataSpec _DataLocationS3 = S3DataSpec { "DataLocationS3": _DataLocationS3, "DataRearrangement": (NullOrUndefined Nothing), "DataSchema": (NullOrUndefined Nothing), "DataSchemaLocationS3": (NullOrUndefined Nothing) }

-- | Constructs S3DataSpec's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3DataSpec' :: S3Url -> ( { "DataLocationS3" :: (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "DataSchema" :: NullOrUndefined (DataSchema) , "DataSchemaLocationS3" :: NullOrUndefined (S3Url) } -> {"DataLocationS3" :: (S3Url) , "DataRearrangement" :: NullOrUndefined (DataRearrangement) , "DataSchema" :: NullOrUndefined (DataSchema) , "DataSchemaLocationS3" :: NullOrUndefined (S3Url) } ) -> S3DataSpec
newS3DataSpec' _DataLocationS3 customize = (S3DataSpec <<< customize) { "DataLocationS3": _DataLocationS3, "DataRearrangement": (NullOrUndefined Nothing), "DataSchema": (NullOrUndefined Nothing), "DataSchemaLocationS3": (NullOrUndefined Nothing) }



-- | <p>A reference to a file or bucket on Amazon Simple Storage Service (Amazon S3).</p>
newtype S3Url = S3Url String
derive instance newtypeS3Url :: Newtype S3Url _
derive instance repGenericS3Url :: Generic S3Url _
instance showS3Url :: Show S3Url where show = genericShow
instance decodeS3Url :: Decode S3Url where decode = genericDecode options
instance encodeS3Url :: Encode S3Url where encode = genericEncode options



newtype ScoreThreshold = ScoreThreshold Number
derive instance newtypeScoreThreshold :: Newtype ScoreThreshold _
derive instance repGenericScoreThreshold :: Generic ScoreThreshold _
instance showScoreThreshold :: Show ScoreThreshold where show = genericShow
instance decodeScoreThreshold :: Decode ScoreThreshold where decode = genericDecode options
instance encodeScoreThreshold :: Encode ScoreThreshold where encode = genericEncode options



newtype ScoreValue = ScoreValue Number
derive instance newtypeScoreValue :: Newtype ScoreValue _
derive instance repGenericScoreValue :: Generic ScoreValue _
instance showScoreValue :: Show ScoreValue where show = genericShow
instance decodeScoreValue :: Decode ScoreValue where decode = genericDecode options
instance encodeScoreValue :: Encode ScoreValue where encode = genericEncode options



-- | Provides the raw classification score corresponding to each label.
newtype ScoreValuePerLabelMap = ScoreValuePerLabelMap (StrMap.StrMap ScoreValue)
derive instance newtypeScoreValuePerLabelMap :: Newtype ScoreValuePerLabelMap _
derive instance repGenericScoreValuePerLabelMap :: Generic ScoreValuePerLabelMap _
instance showScoreValuePerLabelMap :: Show ScoreValuePerLabelMap where show = genericShow
instance decodeScoreValuePerLabelMap :: Decode ScoreValuePerLabelMap where decode = genericDecode options
instance encodeScoreValuePerLabelMap :: Encode ScoreValuePerLabelMap where encode = genericEncode options



-- | <p>The sort order specified in a listing condition. Possible values include the following:</p> <ul> <li> <code>asc</code> - Present the information in ascending order (from A-Z).</li> <li> <code>dsc</code> - Present the information in descending order (from Z-A).</li> </ul>
newtype SortOrder = SortOrder String
derive instance newtypeSortOrder :: Newtype SortOrder _
derive instance repGenericSortOrder :: Generic SortOrder _
instance showSortOrder :: Show SortOrder where show = genericShow
instance decodeSortOrder :: Decode SortOrder where decode = genericDecode options
instance encodeSortOrder :: Encode SortOrder where encode = genericEncode options



-- | <p>String type.</p>
newtype StringType = StringType String
derive instance newtypeStringType :: Newtype StringType _
derive instance repGenericStringType :: Generic StringType _
instance showStringType :: Show StringType where show = genericShow
instance decodeStringType :: Decode StringType where decode = genericDecode options
instance encodeStringType :: Encode StringType where encode = genericEncode options



-- | <p>A custom key-value pair associated with an ML object, such as an ML model.</p>
newtype Tag = Tag 
  { "Key" :: NullOrUndefined (TagKey)
  , "Value" :: NullOrUndefined (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: NullOrUndefined (TagKey) , "Value" :: NullOrUndefined (TagValue) } -> {"Key" :: NullOrUndefined (TagKey) , "Value" :: NullOrUndefined (TagValue) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagLimitExceededException = TagLimitExceededException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeTagLimitExceededException :: Newtype TagLimitExceededException _
derive instance repGenericTagLimitExceededException :: Generic TagLimitExceededException _
instance showTagLimitExceededException :: Show TagLimitExceededException where show = genericShow
instance decodeTagLimitExceededException :: Decode TagLimitExceededException where decode = genericDecode options
instance encodeTagLimitExceededException :: Encode TagLimitExceededException where encode = genericEncode options

-- | Constructs TagLimitExceededException from required parameters
newTagLimitExceededException :: TagLimitExceededException
newTagLimitExceededException  = TagLimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs TagLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagLimitExceededException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> TagLimitExceededException
newTagLimitExceededException'  customize = (TagLimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype TaggableResourceType = TaggableResourceType String
derive instance newtypeTaggableResourceType :: Newtype TaggableResourceType _
derive instance repGenericTaggableResourceType :: Generic TaggableResourceType _
instance showTaggableResourceType :: Show TaggableResourceType where show = genericShow
instance decodeTaggableResourceType :: Decode TaggableResourceType where decode = genericDecode options
instance encodeTaggableResourceType :: Encode TaggableResourceType where encode = genericEncode options



newtype TrainingParameters = TrainingParameters (StrMap.StrMap StringType)
derive instance newtypeTrainingParameters :: Newtype TrainingParameters _
derive instance repGenericTrainingParameters :: Generic TrainingParameters _
instance showTrainingParameters :: Show TrainingParameters where show = genericShow
instance decodeTrainingParameters :: Decode TrainingParameters where decode = genericDecode options
instance encodeTrainingParameters :: Encode TrainingParameters where encode = genericEncode options



newtype UpdateBatchPredictionInput = UpdateBatchPredictionInput 
  { "BatchPredictionId" :: (EntityId)
  , "BatchPredictionName" :: (EntityName)
  }
derive instance newtypeUpdateBatchPredictionInput :: Newtype UpdateBatchPredictionInput _
derive instance repGenericUpdateBatchPredictionInput :: Generic UpdateBatchPredictionInput _
instance showUpdateBatchPredictionInput :: Show UpdateBatchPredictionInput where show = genericShow
instance decodeUpdateBatchPredictionInput :: Decode UpdateBatchPredictionInput where decode = genericDecode options
instance encodeUpdateBatchPredictionInput :: Encode UpdateBatchPredictionInput where encode = genericEncode options

-- | Constructs UpdateBatchPredictionInput from required parameters
newUpdateBatchPredictionInput :: EntityId -> EntityName -> UpdateBatchPredictionInput
newUpdateBatchPredictionInput _BatchPredictionId _BatchPredictionName = UpdateBatchPredictionInput { "BatchPredictionId": _BatchPredictionId, "BatchPredictionName": _BatchPredictionName }

-- | Constructs UpdateBatchPredictionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateBatchPredictionInput' :: EntityId -> EntityName -> ( { "BatchPredictionId" :: (EntityId) , "BatchPredictionName" :: (EntityName) } -> {"BatchPredictionId" :: (EntityId) , "BatchPredictionName" :: (EntityName) } ) -> UpdateBatchPredictionInput
newUpdateBatchPredictionInput' _BatchPredictionId _BatchPredictionName customize = (UpdateBatchPredictionInput <<< customize) { "BatchPredictionId": _BatchPredictionId, "BatchPredictionName": _BatchPredictionName }



-- | <p>Represents the output of an <code>UpdateBatchPrediction</code> operation.</p> <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>
newtype UpdateBatchPredictionOutput = UpdateBatchPredictionOutput 
  { "BatchPredictionId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeUpdateBatchPredictionOutput :: Newtype UpdateBatchPredictionOutput _
derive instance repGenericUpdateBatchPredictionOutput :: Generic UpdateBatchPredictionOutput _
instance showUpdateBatchPredictionOutput :: Show UpdateBatchPredictionOutput where show = genericShow
instance decodeUpdateBatchPredictionOutput :: Decode UpdateBatchPredictionOutput where decode = genericDecode options
instance encodeUpdateBatchPredictionOutput :: Encode UpdateBatchPredictionOutput where encode = genericEncode options

-- | Constructs UpdateBatchPredictionOutput from required parameters
newUpdateBatchPredictionOutput :: UpdateBatchPredictionOutput
newUpdateBatchPredictionOutput  = UpdateBatchPredictionOutput { "BatchPredictionId": (NullOrUndefined Nothing) }

-- | Constructs UpdateBatchPredictionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateBatchPredictionOutput' :: ( { "BatchPredictionId" :: NullOrUndefined (EntityId) } -> {"BatchPredictionId" :: NullOrUndefined (EntityId) } ) -> UpdateBatchPredictionOutput
newUpdateBatchPredictionOutput'  customize = (UpdateBatchPredictionOutput <<< customize) { "BatchPredictionId": (NullOrUndefined Nothing) }



newtype UpdateDataSourceInput = UpdateDataSourceInput 
  { "DataSourceId" :: (EntityId)
  , "DataSourceName" :: (EntityName)
  }
derive instance newtypeUpdateDataSourceInput :: Newtype UpdateDataSourceInput _
derive instance repGenericUpdateDataSourceInput :: Generic UpdateDataSourceInput _
instance showUpdateDataSourceInput :: Show UpdateDataSourceInput where show = genericShow
instance decodeUpdateDataSourceInput :: Decode UpdateDataSourceInput where decode = genericDecode options
instance encodeUpdateDataSourceInput :: Encode UpdateDataSourceInput where encode = genericEncode options

-- | Constructs UpdateDataSourceInput from required parameters
newUpdateDataSourceInput :: EntityId -> EntityName -> UpdateDataSourceInput
newUpdateDataSourceInput _DataSourceId _DataSourceName = UpdateDataSourceInput { "DataSourceId": _DataSourceId, "DataSourceName": _DataSourceName }

-- | Constructs UpdateDataSourceInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDataSourceInput' :: EntityId -> EntityName -> ( { "DataSourceId" :: (EntityId) , "DataSourceName" :: (EntityName) } -> {"DataSourceId" :: (EntityId) , "DataSourceName" :: (EntityName) } ) -> UpdateDataSourceInput
newUpdateDataSourceInput' _DataSourceId _DataSourceName customize = (UpdateDataSourceInput <<< customize) { "DataSourceId": _DataSourceId, "DataSourceName": _DataSourceName }



-- | <p>Represents the output of an <code>UpdateDataSource</code> operation.</p> <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>
newtype UpdateDataSourceOutput = UpdateDataSourceOutput 
  { "DataSourceId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeUpdateDataSourceOutput :: Newtype UpdateDataSourceOutput _
derive instance repGenericUpdateDataSourceOutput :: Generic UpdateDataSourceOutput _
instance showUpdateDataSourceOutput :: Show UpdateDataSourceOutput where show = genericShow
instance decodeUpdateDataSourceOutput :: Decode UpdateDataSourceOutput where decode = genericDecode options
instance encodeUpdateDataSourceOutput :: Encode UpdateDataSourceOutput where encode = genericEncode options

-- | Constructs UpdateDataSourceOutput from required parameters
newUpdateDataSourceOutput :: UpdateDataSourceOutput
newUpdateDataSourceOutput  = UpdateDataSourceOutput { "DataSourceId": (NullOrUndefined Nothing) }

-- | Constructs UpdateDataSourceOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDataSourceOutput' :: ( { "DataSourceId" :: NullOrUndefined (EntityId) } -> {"DataSourceId" :: NullOrUndefined (EntityId) } ) -> UpdateDataSourceOutput
newUpdateDataSourceOutput'  customize = (UpdateDataSourceOutput <<< customize) { "DataSourceId": (NullOrUndefined Nothing) }



newtype UpdateEvaluationInput = UpdateEvaluationInput 
  { "EvaluationId" :: (EntityId)
  , "EvaluationName" :: (EntityName)
  }
derive instance newtypeUpdateEvaluationInput :: Newtype UpdateEvaluationInput _
derive instance repGenericUpdateEvaluationInput :: Generic UpdateEvaluationInput _
instance showUpdateEvaluationInput :: Show UpdateEvaluationInput where show = genericShow
instance decodeUpdateEvaluationInput :: Decode UpdateEvaluationInput where decode = genericDecode options
instance encodeUpdateEvaluationInput :: Encode UpdateEvaluationInput where encode = genericEncode options

-- | Constructs UpdateEvaluationInput from required parameters
newUpdateEvaluationInput :: EntityId -> EntityName -> UpdateEvaluationInput
newUpdateEvaluationInput _EvaluationId _EvaluationName = UpdateEvaluationInput { "EvaluationId": _EvaluationId, "EvaluationName": _EvaluationName }

-- | Constructs UpdateEvaluationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEvaluationInput' :: EntityId -> EntityName -> ( { "EvaluationId" :: (EntityId) , "EvaluationName" :: (EntityName) } -> {"EvaluationId" :: (EntityId) , "EvaluationName" :: (EntityName) } ) -> UpdateEvaluationInput
newUpdateEvaluationInput' _EvaluationId _EvaluationName customize = (UpdateEvaluationInput <<< customize) { "EvaluationId": _EvaluationId, "EvaluationName": _EvaluationName }



-- | <p>Represents the output of an <code>UpdateEvaluation</code> operation.</p> <p>You can see the updated content by using the <code>GetEvaluation</code> operation.</p>
newtype UpdateEvaluationOutput = UpdateEvaluationOutput 
  { "EvaluationId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeUpdateEvaluationOutput :: Newtype UpdateEvaluationOutput _
derive instance repGenericUpdateEvaluationOutput :: Generic UpdateEvaluationOutput _
instance showUpdateEvaluationOutput :: Show UpdateEvaluationOutput where show = genericShow
instance decodeUpdateEvaluationOutput :: Decode UpdateEvaluationOutput where decode = genericDecode options
instance encodeUpdateEvaluationOutput :: Encode UpdateEvaluationOutput where encode = genericEncode options

-- | Constructs UpdateEvaluationOutput from required parameters
newUpdateEvaluationOutput :: UpdateEvaluationOutput
newUpdateEvaluationOutput  = UpdateEvaluationOutput { "EvaluationId": (NullOrUndefined Nothing) }

-- | Constructs UpdateEvaluationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateEvaluationOutput' :: ( { "EvaluationId" :: NullOrUndefined (EntityId) } -> {"EvaluationId" :: NullOrUndefined (EntityId) } ) -> UpdateEvaluationOutput
newUpdateEvaluationOutput'  customize = (UpdateEvaluationOutput <<< customize) { "EvaluationId": (NullOrUndefined Nothing) }



newtype UpdateMLModelInput = UpdateMLModelInput 
  { "MLModelId" :: (EntityId)
  , "MLModelName" :: NullOrUndefined (EntityName)
  , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold)
  }
derive instance newtypeUpdateMLModelInput :: Newtype UpdateMLModelInput _
derive instance repGenericUpdateMLModelInput :: Generic UpdateMLModelInput _
instance showUpdateMLModelInput :: Show UpdateMLModelInput where show = genericShow
instance decodeUpdateMLModelInput :: Decode UpdateMLModelInput where decode = genericDecode options
instance encodeUpdateMLModelInput :: Encode UpdateMLModelInput where encode = genericEncode options

-- | Constructs UpdateMLModelInput from required parameters
newUpdateMLModelInput :: EntityId -> UpdateMLModelInput
newUpdateMLModelInput _MLModelId = UpdateMLModelInput { "MLModelId": _MLModelId, "MLModelName": (NullOrUndefined Nothing), "ScoreThreshold": (NullOrUndefined Nothing) }

-- | Constructs UpdateMLModelInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateMLModelInput' :: EntityId -> ( { "MLModelId" :: (EntityId) , "MLModelName" :: NullOrUndefined (EntityName) , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) } -> {"MLModelId" :: (EntityId) , "MLModelName" :: NullOrUndefined (EntityName) , "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) } ) -> UpdateMLModelInput
newUpdateMLModelInput' _MLModelId customize = (UpdateMLModelInput <<< customize) { "MLModelId": _MLModelId, "MLModelName": (NullOrUndefined Nothing), "ScoreThreshold": (NullOrUndefined Nothing) }



-- | <p>Represents the output of an <code>UpdateMLModel</code> operation.</p> <p>You can see the updated content by using the <code>GetMLModel</code> operation.</p>
newtype UpdateMLModelOutput = UpdateMLModelOutput 
  { "MLModelId" :: NullOrUndefined (EntityId)
  }
derive instance newtypeUpdateMLModelOutput :: Newtype UpdateMLModelOutput _
derive instance repGenericUpdateMLModelOutput :: Generic UpdateMLModelOutput _
instance showUpdateMLModelOutput :: Show UpdateMLModelOutput where show = genericShow
instance decodeUpdateMLModelOutput :: Decode UpdateMLModelOutput where decode = genericDecode options
instance encodeUpdateMLModelOutput :: Encode UpdateMLModelOutput where encode = genericEncode options

-- | Constructs UpdateMLModelOutput from required parameters
newUpdateMLModelOutput :: UpdateMLModelOutput
newUpdateMLModelOutput  = UpdateMLModelOutput { "MLModelId": (NullOrUndefined Nothing) }

-- | Constructs UpdateMLModelOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateMLModelOutput' :: ( { "MLModelId" :: NullOrUndefined (EntityId) } -> {"MLModelId" :: NullOrUndefined (EntityId) } ) -> UpdateMLModelOutput
newUpdateMLModelOutput'  customize = (UpdateMLModelOutput <<< customize) { "MLModelId": (NullOrUndefined Nothing) }



-- | <p>The name of a variable. Currently it's used to specify the name of the target value, label, weight, and tags.</p>
newtype VariableName = VariableName String
derive instance newtypeVariableName :: Newtype VariableName _
derive instance repGenericVariableName :: Generic VariableName _
instance showVariableName :: Show VariableName where show = genericShow
instance decodeVariableName :: Decode VariableName where decode = genericDecode options
instance encodeVariableName :: Encode VariableName where encode = genericEncode options



-- | <p>The value of a variable. Currently it's used to specify values of the target value, weights, and tag variables and for filtering variable values.</p>
newtype VariableValue = VariableValue String
derive instance newtypeVariableValue :: Newtype VariableValue _
derive instance repGenericVariableValue :: Generic VariableValue _
instance showVariableValue :: Show VariableValue where show = genericShow
instance decodeVariableValue :: Decode VariableValue where decode = genericDecode options
instance encodeVariableValue :: Encode VariableValue where encode = genericEncode options



-- | <p>Specifies whether a describe operation should return exhaustive or abbreviated information.</p>
newtype Verbose = Verbose Boolean
derive instance newtypeVerbose :: Newtype Verbose _
derive instance repGenericVerbose :: Generic Verbose _
instance showVerbose :: Show Verbose where show = genericShow
instance decodeVerbose :: Decode Verbose where decode = genericDecode options
instance encodeVerbose :: Encode Verbose where encode = genericEncode options



newtype VipURL = VipURL String
derive instance newtypeVipURL :: Newtype VipURL _
derive instance repGenericVipURL :: Generic VipURL _
instance showVipURL :: Show VipURL where show = genericShow
instance decodeVipURL :: Decode VipURL where decode = genericDecode options
instance encodeVipURL :: Encode VipURL where encode = genericEncode options



newtype FloatLabel' = FloatLabel' Number
derive instance newtypeFloatLabel' :: Newtype FloatLabel' _
derive instance repGenericFloatLabel' :: Generic FloatLabel' _
instance showFloatLabel' :: Show FloatLabel' where show = genericShow
instance decodeFloatLabel' :: Decode FloatLabel' where decode = genericDecode options
instance encodeFloatLabel' :: Encode FloatLabel' where encode = genericEncode options
